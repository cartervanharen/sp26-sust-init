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
    this.add
      .text(
        this.scale.width / 2,
        28,
        "Fridge sort (skeleton)",
        {
          fontFamily: "system-ui, sans-serif",
          fontSize: "20px",
          color: "#ecf0f1",
        }
      )
      .setOrigin(0.5);

    this.zoneGraphics = this.add.graphics();
    this.drawZoneOutlines();

    // TODO: replace with sprites + drag handlers + drop validation vs zoneId
    this.spawnPlaceholderItems();

    this.input.once("pointerdown", () => {
      // Reserved: start round / tutorial overlay
    });
  }

  drawZoneOutlines() {
    this.zoneGraphics.clear();
    this.zoneGraphics.lineStyle(2, 0x7f8c8d, 0.9);
    FRIDGE_ZONES.forEach((z) => {
      const { x, y, w, h } = z.rect;
      this.zoneGraphics.strokeRect(x, y, w, h);
    });
  }

  spawnPlaceholderItems() {
    const startY = 100;
    const boxX = 24;
    const boxW = 72;
    const boxH = 40;
    ITEMS_CATALOG.forEach((item, i) => {
      const y = startY + i * 56;
      const g = this.add.graphics();
      g.fillStyle(0xe74c3c + i * 0x111111, 1);
      g.fillRoundedRect(boxX, y, boxW, boxH, 6);
      this.add
        .text(boxX + boxW / 2, y + boxH / 2, item.label, {
          fontFamily: "system-ui, sans-serif",
          fontSize: "11px",
          color: "#ffffff",
        })
        .setOrigin(0.5);
    });
  }
}
