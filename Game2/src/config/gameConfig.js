/**
 * Global Phaser / canvas settings for the fridge sorting game.
 * Tune width/height once you lock in art resolution and scaling.
 */
export const GAME_WIDTH = 960;
export const GAME_HEIGHT = 640;

export const phaserConfig = {
  type: Phaser.AUTO,
  parent: "game-container",
  width: GAME_WIDTH,
  height: GAME_HEIGHT,
  backgroundColor: "#2c3e50",
  scale: {
    mode: Phaser.Scale.FIT,
    autoCenter: Phaser.Scale.CENTER_BOTH,
  },
  physics: {
    default: "arcade",
    arcade: {
      gravity: { y: 0 },
      debug: false,
    },
  },
};
