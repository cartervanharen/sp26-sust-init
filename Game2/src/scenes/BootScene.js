import Phaser from "phaser";

/**
 * First scene: any one-time setup before assets load (fonts, local storage, etc.).
 */
export class BootScene extends Phaser.Scene {
  constructor() {
    super({ key: "BootScene" });
  }

  create() {
    this.scene.start("PreloadScene");
  }
}
