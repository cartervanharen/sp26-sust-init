import Phaser from "phaser";

/**
 * Load images, audio, atlases. When complete, go to the main fridge game.
 */
export class PreloadScene extends Phaser.Scene {
  constructor() {
    super({ key: "PreloadScene" });
  }

  preload() {
    // Placeholder: add this.load.image('key', 'url') when assets are ready
    const { width, height } = this.scale;
    this.add
      .text(width / 2, height / 2, "Loading…", {
        fontFamily: "system-ui, sans-serif",
        fontSize: "24px",
        color: "#ecf0f1",
      })
      .setOrigin(0.5);
  }

  create() {
    this.scene.start("FridgeSortScene");
  }
}
