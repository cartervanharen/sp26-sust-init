import Phaser from "phaser";
import scenarioData from "../data/scenarios.json";

export class ResultsScene extends Phaser.Scene {
  constructor() {
    super({ key: "ResultsScene" });
  }

  init(data) {
    this.finalScore = data.score ?? 0;
    this.history = data.history || [];
  }

  create() {
    this.cameras.main.fadeIn(600, 0, 0, 0);
    this.cameras.main.setBackgroundColor("#0f1a0f");

    const rating = this.getRating(this.finalScore);

    this.add.text(960, 80, "YOUR DAY IS DONE", {
      fontFamily: "'Courier New', monospace",
      fontSize: "28px",
      color: "#6b8e6b",
    }).setOrigin(0.5);

    const divider1 = this.add.graphics();
    divider1.lineStyle(2, 0x3a5a3a);
    divider1.lineBetween(160, 120, 1760, 120);

    this.add.text(960, 180, rating.title, {
      fontFamily: "'Courier New', monospace",
      fontSize: "64px",
      color: "#8fbc8f",
      fontStyle: "bold",
    }).setOrigin(0.5);

    const scoreColor = this.finalScore >= 14 ? "#8fbc8f"
      : this.finalScore >= 7 ? "#d4a857"
      : "#cd5c5c";

    this.add.text(960, 260, `Final Score: ${this.finalScore} points`, {
      fontFamily: "'Courier New', monospace",
      fontSize: "40px",
      color: scoreColor,
    }).setOrigin(0.5);

    this.add.text(960, 330, rating.description, {
      fontFamily: "Georgia, 'Times New Roman', serif",
      fontSize: "28px",
      color: "#a8b8a8",
      wordWrap: { width: 1400 },
      align: "center",
      lineSpacing: 8,
    }).setOrigin(0.5, 0);

    const divider2 = this.add.graphics();
    divider2.lineStyle(2, 0x3a5a3a);
    divider2.lineBetween(160, 460, 1760, 460);

    this.add.text(960, 490, "YOUR CHOICES", {
      fontFamily: "'Courier New', monospace",
      fontSize: "24px",
      color: "#6b8e6b",
    }).setOrigin(0.5);

    this.drawHistory();
    this.drawButtons();
  }

  getRating(score) {
    const sorted = [...scenarioData.ratings].sort((a, b) => b.minScore - a.minScore);
    for (const r of sorted) {
      if (score >= r.minScore) return r;
    }
    return sorted[sorted.length - 1];
  }

  drawHistory() {
    const startY = 540;
    const lineHeight = 56;
    const maxVisible = Math.min(this.history.length, 10);

    const maskShape = this.make.graphics();
    maskShape.fillRect(0, 520, 1920, 580);
    const mask = maskShape.createGeometryMask();

    const container = this.add.container(0, 0);
    container.setMask(mask);

    this.history.forEach((entry, i) => {
      const y = startY + i * lineHeight;
      const pointColor = entry.points > 0 ? "#8fbc8f"
        : entry.points < 0 ? "#cd5c5c"
        : "#d4a857";
      const sign = entry.points > 0 ? "+" : "";

      const dot = this.add.text(160, y, "●", {
        fontFamily: "monospace",
        fontSize: "20px",
        color: pointColor,
      });

      const choiceLabel = entry.choiceText.length > 60
        ? entry.choiceText.substring(0, 57) + "..."
        : entry.choiceText;

      const text = this.add.text(200, y, choiceLabel, {
        fontFamily: "'Courier New', monospace",
        fontSize: "26px",
        color: "#c8d8c8",
      });

      const points = this.add.text(1720, y, `${sign}${entry.points}`, {
        fontFamily: "'Courier New', monospace",
        fontSize: "26px",
        color: pointColor,
        fontStyle: "bold",
      }).setOrigin(1, 0);

      container.add([dot, text, points]);
    });

    if (this.history.length > maxVisible) {
      const totalHeight = this.history.length * lineHeight;
      const viewHeight = 560;
      let scrollY = 0;

      this.input.on("wheel", (_pointer, _gos, _dx, dy) => {
        scrollY = Phaser.Math.Clamp(
          scrollY - dy * 1.0,
          -(totalHeight - viewHeight),
          0
        );
        container.y = scrollY;
      });
    }
  }

  drawButtons() {
    const btnY = 1180;

    this.createButton(700, btnY, "PLAY AGAIN", 0x4a7c59, () => {
      this.cameras.main.fadeOut(400, 0, 0, 0);
      this.cameras.main.once("camerafadeoutcomplete", () => {
        this.scene.start("StoryScene", {
          scenarioId: "morning",
          score: 0,
          history: [],
        });
      });
    });

    this.createButton(1220, btnY, "MAIN MENU", 0x3a4a5a, () => {
      window.location.href = "index.html";
    });
  }

  createButton(x, y, text, color, onClick) {
    const container = this.add.container(x, y);

    const bg = this.add.graphics();
    bg.fillStyle(color, 1);
    bg.fillRoundedRect(-180, -44, 360, 88, 12);

    const label = this.add.text(0, 0, text, {
      fontFamily: "'Courier New', monospace",
      fontSize: "28px",
      color: "#dce8dc",
      fontStyle: "bold",
    }).setOrigin(0.5);

    container.add([bg, label]);
    container.setSize(360, 88);
    container.setInteractive({ useHandCursor: true });

    const hoverColor = Phaser.Display.Color.ValueToColor(color).lighten(20).color;

    container.on("pointerover", () => {
      bg.clear();
      bg.fillStyle(hoverColor, 1);
      bg.fillRoundedRect(-180, -44, 360, 88, 12);
    });

    container.on("pointerout", () => {
      bg.clear();
      bg.fillStyle(color, 1);
      bg.fillRoundedRect(-180, -44, 360, 88, 12);
    });

    container.on("pointerdown", onClick);
    return container;
  }
}
