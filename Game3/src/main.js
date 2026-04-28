import Phaser from "phaser";
import { phaserConfig } from "./config/gameConfig.js";
import { BootScene } from "./scenes/BootScene.js";
import { PreloadScene } from "./scenes/PreloadScene.js";
import { StoryScene } from "./scenes/StoryScene.js";
import { ResultsScene } from "./scenes/ResultsScene.js";

const config = {
  ...phaserConfig,
  scene: [BootScene, PreloadScene, StoryScene, ResultsScene],
};

new Phaser.Game(config);
