import Phaser from "phaser";
import morrisonUrl from "../assets/morrison.jpg?url";
import campuswalkwayUrl from "../assets/campuswalkway.jpg?url";
import lowerquadUrl from "../assets/lowerquad.jpg?url";
import libraryUrl from "../assets/library.jpg?url";

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

    this.load.image("bg_morrison", morrisonUrl);
    this.load.image("bg_campuswalkway", campuswalkwayUrl);
    this.load.image("bg_lowerquad", lowerquadUrl);
    this.load.image("bg_library", libraryUrl);
  }

  create() {
    this.scene.start("StoryScene");
  }
}
