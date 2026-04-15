import Phaser from "phaser";
import { FRIDGE_ZONES } from "../data/fridgeZones.js";
import { ITEMS_CATALOG } from "../data/itemsCatalog.js";

/**
 * Main gameplay: drag items into the correct fridge zone for sustainability.
 * Skeleton only — zones and item placeholders are drawn for layout iteration.
 */
export class FridgeSortScene extends Phaser.Scene {
  constructor() {
    super({ key: "FridgeSortScene" });
  }

  create() {
    this.add.text(this.scale.width / 2, 28, "Fridge Sort", {
      fontFamily: "system-ui, sans-serif",
      fontSize: "20px",
      color: "#ecf0f1",
    }).setOrigin(0.5);

    
    this.createAllZones();

    this.spawnDraggableItems();

    this.setupDragEvents();
  }

  createAllZones() {
    FRIDGE_ZONES.forEach((z) => {
        const { x, y, w, h } = z.rect;
        const zone = this.add.zone(x + w / 2, y + h / 2, w, h).setRectangleDropZone(w, h);
        zone.setData("zoneId", z.zoneId);

        // outlines for zones
        const graphics = this.add.graphics();
        graphics.lineStyle(2, 0x7f8c8d, 0.5);
        graphics.strokeRect(x, y, w, h);
        
        // zone labels
        this.add.text(x + 5, y + 5, z.label, { fontSize: "10px", color: "#7f8c8d" });
    });
}

  spawnDraggableItems() {
    ITEMS_CATALOG.forEach((item, i) => {
      const startX = 60;
      const startY = 130 + i * 60;

      //visual container for the food item 
      const container = this.add.container(startX, startY);
      const bg = this.add.graphics();
      bg.fillStyle(0x3498db, 1);
      bg.fillRoundedRect(-40, -20, 80, 40, 6);
      
      const label = this.add.text(0, 0, item.label, {
        fontSize: "14px",
        color: "#ffffff"
      }).setOrigin(0.5);

      container.add([bg, label]);
      container.setSize(80, 40);
      container.setInteractive({ draggable: true });
      
      // attach metadata for validation 
      container.setData("itemData", item);
      container.setData("originX", startX);
      container.setData("originY", startY);
    });
  }

  setupDragEvents() {
    this.input.on('dragstart', (pointer, gameObject) => {
      this.children.bringToTop(gameObject);
      gameObject.setScale(1.1); // gets bigger when picked up
    });

    this.input.on('drag', (pointer, gameObject, dragX, dragY) => {
      gameObject.x = dragX;
      gameObject.y = dragY;
    });

    this.input.on('drop', (pointer, gameObject, dropZone) => {
        const itemData = gameObject.getData("itemData");
        const targetZoneId = dropZone.getData("zoneId");

        // Snap if it is the correct zone
        if (itemData.correctZoneId === targetZoneId) {
            gameObject.x = dropZone.x;
            gameObject.y = dropZone.y;
            console.log(`Correct! ${itemData.label} belongs in the ${targetZoneId}.`);
        } else {
            
            this.returnToOrigin(gameObject);
        }
    });

    this.input.on('dragend', (pointer, gameObject, dropped) => {
      gameObject.setScale(1.0);
      if (!dropped) {
        this.returnToOrigin(gameObject);
      }
    });
  }

  returnToOrigin(gameObject) {
    gameObject.x = gameObject.getData("originX");
    gameObject.y = gameObject.getData("originY");
  }
}
