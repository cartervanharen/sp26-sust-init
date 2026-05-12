import Phaser from "phaser";
import { FRIDGE_ZONES } from "../data/fridgeZones.js";
import { LEVELS_DATA } from "../data/itemsCatalog.js";

export class FridgeSortScene extends Phaser.Scene {
  constructor() {
    super({ key: "FridgeSortScene" });
  }

  /**
   * Captures the level passed from the previous scene or restart.
   * If no level is passed, it defaults to Level 1.
   */
  init(data) {
    this.currentLevel = data.level || 1;
    const levelConfig = LEVELS_DATA[this.currentLevel] || LEVELS_DATA[1];
    
    this.levelItems = levelConfig.items;
    this.timeLeft = levelConfig.timeLimit;
    this.score = 0;
    this.totalItems = this.levelItems.length;
  }

  create() {
    // 1. Background (using the key 'fridge_bg' from PreloadScene)
    this.add.image(this.scale.width / 2, this.scale.height / 2, 'fridge_bg')
            .setDisplaySize(this.scale.width, this.scale.height);

    // 2. UI Header Overlay
    this.add.graphics()
        .fillStyle(0x000000, 0.3)
        .fillRect(0, 0, this.scale.width, 60);

    this.add.text(this.scale.width / 2, 28, `Level ${this.currentLevel}: Fridge Sort`, {
      fontFamily: "system-ui, sans-serif",
      fontSize: "20px",
      color: "#ecf0f1",
    }).setOrigin(0.5);

    // 3. Initialize Game Elements
    this.createAllZones();
    this.spawnDraggableItems();
    this.setupDragEvents();
    this.inGameMenu();

    // 4. Score display
    this.scoreText = this.add.text(20, 20, `Sorted: ${this.score} / ${this.totalItems}`, {
        fontFamily: "system-ui, sans-serif",
        fontSize: "20px",
        color: "#2ecc71",
        fontStyle: "bold"
    });

    // 5. Timer display
    this.timerText = this.add.text(this.scale.width - 20, 20, `Time: ${this.timeLeft}`, {
      fontFamily: "system-ui, sans-serif",
      fontSize: "20px",
      color: "#ffffff",
      fontStyle: "bold"
    }).setOrigin(1, 0);

    // 6. Start the countdown timer
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

        // Optional: outlines for debugging or layout guide
        const graphics = this.add.graphics();
        graphics.lineStyle(2, 0x7f8c8d, 0.5);
        graphics.strokeRect(x, y, w, h);
        
        this.add.text(x + 5, y + 5, z.label, { fontSize: "10px", color: "#7f8c8d" });
    });
  }

  spawnDraggableItems() {
    this.levelItems.forEach((item, i) => {
      const startX = 85;
      const startY = 100 + (i * 70); 

      const container = this.add.container(startX, startY);
      const bg = this.add.graphics();
      bg.fillStyle(0x3498db, 1);
      bg.fillRoundedRect(-50, -20, 100, 40, 6);
      
      const label = this.add.text(0, 0, item.label, {
        fontSize: "14px",
        color: "#ffffff"
      }).setOrigin(0.5);

      container.add([bg, label]);
      container.setSize(100, 40);
      container.setInteractive({ draggable: true });
      
      container.setData("itemData", item);
      container.setData("originX", startX);
      container.setData("originY", startY);
    });
  }

  setupDragEvents() {
    this.input.on('dragstart', (pointer, gameObject) => {
      this.children.bringToTop(gameObject);
      gameObject.setScale(1.1);
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
          
          if (!gameObject.getData("isSorted")) {
              this.score++;
              gameObject.setData("isSorted", true);
              this.scoreText.setText(`Sorted: ${this.score} / ${this.totalItems}`);
          }

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

  updateTimer() {
    this.timeLeft--;
    this.timerText.setText(`Time: ${this.timeLeft}`);
    
    if (this.timeLeft <= 0) {
        window.location.href = 'gameover.html';
    }
  }

  handleWin() {
    const winText = this.add.text(this.scale.width / 2, this.scale.height / 2, "PERFECTLY SORTED!", {
        fontSize: "48px",
        fill: "#2ecc71",
        stroke: "#000",
        strokeThickness: 6
    }).setOrigin(0.5).setDepth(200);

    this.time.delayedCall(2000, () => {
        const nextLevel = this.currentLevel + 1;
        
        if (LEVELS_DATA[nextLevel]) {
            this.scene.restart({ level: nextLevel });
        } else {
            window.location.href = 'nextLevel.html'; 
        }
    });
  }

  returnToOrigin(gameObject) {
    gameObject.x = gameObject.getData("originX");
    gameObject.y = gameObject.getData("originY");
  }

  inGameMenu() {
    const menuBtn = this.add.text(this.scale.width - 80, 20, "MENU", {
        fontFamily: "system-ui, sans-serif",
        fontSize: "18px",
        backgroundColor: "#34495e",
        padding: { x: 10, y: 5 },
        color: "#ffffff"
    }).setOrigin(1, 0).setInteractive({ useHandCursor: true });

    this.menuPanel = this.add.container(this.scale.width / 2, this.scale.height / 2).setVisible(false).setDepth(100);

    const bg = this.add.graphics();
    bg.fillStyle(0x2c3e50, 0.95);
    bg.fillRoundedRect(-100, -80, 200, 160, 10);

    const restartBtn = this.add.text(0, -30, "Restart Level", {
        backgroundColor: "#27ae60",
        padding: { x: 20, y: 10 },
        fixedWidth: 160,
        align: 'center'
    }).setOrigin(0.5).setInteractive({ useHandCursor: true });

    const exitBtn = this.add.text(0, 40, "Main Menu", {
        backgroundColor: "#e74c3c",
        padding: { x: 20, y: 10 },
        fixedWidth: 160,
        align: 'center'
    }).setOrigin(0.5).setInteractive({ useHandCursor: true });

    this.menuPanel.add([bg, restartBtn, exitBtn]);

    menuBtn.on('pointerdown', () => {
        this.menuPanel.setVisible(!this.menuPanel.visible);
    });

    restartBtn.on('pointerdown', () => {
        this.scene.restart({ level: this.currentLevel }); 
    });

    exitBtn.on('pointerdown', () => {
        window.location.href = 'index.html';
    });
  }
}
