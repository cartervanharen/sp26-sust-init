import Phaser from "phaser";

export class PreloadScene extends Phaser.Scene {
  constructor() {
    super({ key: "PreloadScene" });
  }

  preload() {
    const cx = this.scale.width / 2;
    const cy = this.scale.height / 2;

    this.add.text(cx, cy, "Loading...", {
      fontFamily: "'Courier New', monospace",
      fontSize: "48px",
      color: "#8fbc8f",
    }).setOrigin(0.5);
  }

  create() {
    this.scene.start("StoryScene");
  }
}
