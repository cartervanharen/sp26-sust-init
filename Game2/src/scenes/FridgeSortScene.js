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

    this.inGameMenu();

    //score
    this.score = 0;
    this.totalItems = ITEMS_CATALOG.length;

    this.scoreText = this.add.text(20, 20, `Items Sorted: ${this.score} / ${this.totalItems}`, {
        fontFamily: "system-ui, sans-serif",
        fontSize: "24px",
        color: "#2ecc71", 
        fontWeight: "bold"
    });




    //timer
    this.timeLeft = 60;

    this.timerText = this.add.text(this.scale.width - 20, 20, `Time: ${this.timeLeft}`, {
      fontFamily: "system-ui, sans-serif",
      fontSize: "24px",
      color: "#f4efee", 
      fontWeight: "bold"
    }).setOrigin(1, -22);

    this.time.addEvent({
      delay: 1000,
      callback: this.updateTimer,
      callbackScope: this,
      loop: true
    });
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

      if (itemData.correctZoneId === targetZoneId) {
          gameObject.x = dropZone.x;
          gameObject.y = dropZone.y;
          
          // Prevent re-scoring the same item if it's already "locked" (optional)
          if (!gameObject.getData("isSorted")) {
              this.score++;
              gameObject.setData("isSorted", true);
              this.scoreText.setText(`Items Sorted: ${this.score} / ${this.totalItems}`);
          }

          // Success Check: Is the fridge fully sorted? [cite: 3, 9]
          if (this.score === this.totalItems) {
              this.handleWin();
          }
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

  inGameMenu() {
    
    const menuBtn = this.add.text(this.scale.width - 150, 20, "MENU", {
        fontFamily: "-apple-system, sans-serif",
        fontSize: "18px",
        backgroundColor: "#34495e",
        padding: { x: 10, y: 5 },
        color: "#ffffff"
    }).setInteractive({ useHandCursor: true });

    //popup
    this.menuPanel = this.add.container(this.scale.width / 2, this.scale.height / 2).setVisible(false).setDepth(100);

    const bg = this.add.graphics();
    bg.fillStyle(0x2c3e50, 0.95);
    bg.fillRoundedRect(-100, -80, 200, 160, 10);
    bg.lineStyle(2, 0x7f8c8d);
    bg.strokeRoundedRect(-100, -80, 200, 160, 10);

    // restart button
    const restartBtn = this.add.text(0, -30, "Restart Level", {
        fontFamily: "-apple-system, sans-serif",
        fontSize: "18px",
        backgroundColor: "#27ae60",
        padding: { x: 20, y: 10 },
        fixedWidth: 160,
        align: 'center'
    }).setOrigin(0.5).setInteractive({ useHandCursor: true });

    // mainmenu button
    const exitBtn = this.add.text(0, 40, "Main Menu", {
        fontFamily: "-apple-system, sans-serif",
        fontSize: "18px",
        backgroundColor: "#e74c3c",
        padding: { x: 20, y: 10 },
        fixedWidth: 160,
        align: 'center'
    }).setOrigin(0.5).setInteractive({ useHandCursor: true });

    this.menuPanel.add([bg, restartBtn, exitBtn]);

    //button logic
    menuBtn.on('pointerdown', () => {
        this.menuPanel.setVisible(!this.menuPanel.visible);
    });

    restartBtn.on('pointerdown', () => {
        this.scene.restart(); 
    });

    exitBtn.on('pointerdown', () => {
        window.location.href = 'index.html';
    });
}

  updateTimer() {
    this.timeLeft--;

    // Update the display
    this.timerText.setText(`Time: ${this.timeLeft}`);
    if (this.timeLeft <= 0) {
        window.location.href = 'gameover.html';
    }
}

handleWin() {
    this.time.delayedCall(500, () => {
        window.location.href = 'nextLevel.html'; 
    });
}

  returnToOrigin(gameObject) {
    gameObject.x = gameObject.getData("originX");
    gameObject.y = gameObject.getData("originY");
  }
}
