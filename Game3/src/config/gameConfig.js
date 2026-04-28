import Phaser from "phaser";

export const GAME_WIDTH = 1920;
export const GAME_HEIGHT = 1280;

export const phaserConfig = {
  type: Phaser.AUTO,
  parent: "game-container",
  width: GAME_WIDTH,
  height: GAME_HEIGHT,
  backgroundColor: "#1a2a1a",
  resolution: window.devicePixelRatio || 1,
  render: {
    antialias: true,
    pixelArt: false,
    roundPixels: false,
  },
  scale: {
    mode: Phaser.Scale.FIT,
    autoCenter: Phaser.Scale.CENTER_BOTH,
  },
};
