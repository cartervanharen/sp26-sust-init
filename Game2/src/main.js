import Phaser from "phaser";
import { phaserConfig } from "./config/gameConfig.js";
import { BootScene } from "./scenes/BootScene.js";
import { PreloadScene } from "./scenes/PreloadScene.js";
import { FridgeSortScene } from "./scenes/FridgeSortScene.js";

const config = {
  ...phaserConfig,
  scene: [BootScene, PreloadScene, FridgeSortScene],
};

new Phaser.Game(config);
