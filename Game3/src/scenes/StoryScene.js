import Phaser from "phaser";
import scenarioData from "../data/scenarios.json";

export class StoryScene extends Phaser.Scene {
  constructor() {
    super({ key: "StoryScene" });
  }

  init(data) {
    this.currentId = data.scenarioId || scenarioData.startScenario;
    this.score = data.score ?? 0;
    this.history = data.history || [];
    this.choiceObjects = [];
    this.typewriterTimer = null;
    this.processingChoice = false;
  }

  create() {
    this.cameras.main.setBackgroundColor("#1a2a1a");

    const scenario = scenarioData.scenarios.find(s => s.id === this.currentId);
    if (!scenario) {
      this.scene.start("ResultsScene", {
        score: this.score,
        history: this.history,
      });
      return;
    }

    this.drawStatusBar();
    this.drawSceneImage(scenario);
    this.drawScenario(scenario);
  }

  drawSceneImage(scenario) {
    if (!scenario.background || !this.textures.exists(scenario.background)) {
      return;
    }

    const cx = 500;
    const cy = 470;
    const maxW = 820;
    const maxH = 440;

    const img = this.add.image(cx, cy, scenario.background);
    const tex = img.texture.getSourceImage();
    const scale = Math.min(maxW / tex.width, maxH / tex.height);
    img.setScale(scale);

    const w = img.displayWidth;
    const h = img.displayHeight;

    const shadow = this.add.graphics();
    shadow.fillStyle(0x000000, 0.4);
    shadow.fillRoundedRect(cx - w / 2 - 4, cy - h / 2 - 4 + 8, w + 8, h + 8, 10);
    shadow.setDepth(-1);

    const frame = this.add.graphics();
    frame.lineStyle(4, 0x4a7c59);
    frame.strokeRoundedRect(cx - w / 2 - 4, cy - h / 2 - 4, w + 8, h + 8, 10);
  }

  drawStatusBar() {
    const barBg = this.add.graphics();
    barBg.fillStyle(0x0f1a0f, 0.9);
    barBg.fillRect(0, 0, 1920, 100);
    barBg.lineStyle(2, 0x3a5a3a);
    barBg.lineBetween(0, 100, 1920, 100);

    this.add.text(40, 28, "THE TOMMIE TRAIL", {
      fontFamily: "'Courier New', monospace",
      fontSize: "32px",
      color: "#6b8e6b",
      fontStyle: "bold",
    });

    const pointColor = this.score >= 0 ? "#8fbc8f" : "#cd5c5c";
    this.scoreText = this.add.text(1880, 28, `SUSTAINABILITY: ${this.score} pts`, {
      fontFamily: "'Courier New', monospace",
      fontSize: "32px",
      color: pointColor,
    }).setOrigin(1, 0);

    const progress = this.history.length;
    const maxSteps = 10;
    const barWidth = 400;
    const barX = 760;
    const barY = 40;

    const trackBg = this.add.graphics();
    trackBg.fillStyle(0x2a3a2a);
    trackBg.fillRect(barX, barY, barWidth, 20);

    const fillWidth = Math.min((progress / maxSteps) * barWidth, barWidth);
    if (fillWidth > 0) {
      const trackFill = this.add.graphics();
      trackFill.fillStyle(0x4a7c59);
      trackFill.fillRect(barX, barY, fillWidth, 20);
    }
  }

  drawScenario(scenario) {
    const titleBg = this.add.graphics();
    titleBg.fillStyle(0x2d4a3e, 0.8);
    titleBg.fillRoundedRect(60, 130, 1800, 80, 8);

    this.add.text(960, 170, scenario.title, {
      fontFamily: "'Courier New', monospace",
      fontSize: "28px",
      color: "#8fbc8f",
      fontStyle: "bold",
    }).setOrigin(0.5);

    this.promptText = this.add.text(960, 250, "", {
      fontFamily: "Georgia, 'Times New Roman', serif",
      fontSize: "38px",
      color: "#dce8dc",
      wordWrap: { width: 900 },
      lineSpacing: 14,
    });

    this.typewriterEffect(scenario.prompt, this.promptText, () => {
      this.showChoices(scenario);
    });
  }

  typewriterEffect(fullText, textObject, onComplete) {
    let index = 0;
    const speed = 18;

    if (this.typewriterTimer) {
      this.typewriterTimer.remove();
    }

    this.typewriterTimer = this.time.addEvent({
      delay: speed,
      callback: () => {
        textObject.text += fullText[index];
        index++;
        if (index >= fullText.length) {
          this.typewriterTimer.remove();
          this.typewriterTimer = null;
          if (onComplete) onComplete();
        }
      },
      loop: true,
    });

    this.input.once("pointerdown", () => {
      if (this.typewriterTimer) {
        this.typewriterTimer.remove();
        this.typewriterTimer = null;
        textObject.text = fullText;
        if (onComplete) onComplete();
      }
    });
  }

  showChoices(scenario) {
    const choiceCount = scenario.choices.length;
    const spacing = choiceCount >= 4 ? 110 : 120;
    const blockHeight = (choiceCount - 1) * spacing;
    const startY = Math.min(820, 1230 - blockHeight);

    scenario.choices.forEach((choice, i) => {
      const y = startY + i * spacing;
      const container = this.add.container(960, y);

      const bg = this.add.graphics();
      bg.fillStyle(0x2d4a3e, 1);
      bg.fillRoundedRect(-800, -50, 1600, 100, 16);
      bg.lineStyle(2, 0x4a7c59);
      bg.strokeRoundedRect(-800, -50, 1600, 100, 16);

      const marker = this.add.text(-760, 0, `${i + 1}.`, {
        fontFamily: "'Courier New', monospace",
        fontSize: "32px",
        color: "#6b8e6b",
        fontStyle: "bold",
      }).setOrigin(0, 0.5);

      const label = this.add.text(-700, 0, choice.text, {
        fontFamily: "Georgia, 'Times New Roman', serif",
        fontSize: "36px",
        color: "#dce8dc",
        wordWrap: { width: 1440 },
      }).setOrigin(0, 0.5);

      container.add([bg, marker, label]);
      container.setSize(1600, 100);
      container.setInteractive({ useHandCursor: true });

      container.setAlpha(0);
      this.tweens.add({
        targets: container,
        alpha: 1,
        duration: 300,
        delay: i * 100,
      });

      container.on("pointerover", () => {
        bg.clear();
        bg.fillStyle(0x3d6a5e, 1);
        bg.fillRoundedRect(-800, -50, 1600, 100, 16);
        bg.lineStyle(4, 0x8fbc8f);
        bg.strokeRoundedRect(-800, -50, 1600, 100, 16);
      });

      container.on("pointerout", () => {
        bg.clear();
        bg.fillStyle(0x2d4a3e, 1);
        bg.fillRoundedRect(-800, -50, 1600, 100, 16);
        bg.lineStyle(2, 0x4a7c59);
        bg.strokeRoundedRect(-800, -50, 1600, 100, 16);
      });

      container.once("pointerdown", () => {
        if (this.processingChoice) return;
        this.choiceObjects.forEach(c => c.disableInteractive());
        this.handleChoice(scenario, choice);
      });

      this.choiceObjects.push(container);
    });
  }

  handleChoice(scenario, choice) {
    if (this.processingChoice) return;
    this.processingChoice = true;

    this.choiceObjects.forEach(c => {
      c.disableInteractive();
      c.removeAllListeners();
      c.setVisible(false);
      c.destroy();
    });
    this.choiceObjects = [];

    this.score += choice.points;
    this.history.push({
      scenarioId: scenario.id,
      scenarioTitle: scenario.title,
      choiceText: choice.text,
      points: choice.points,
      feedback: choice.feedback,
    });

    const pointColor = choice.points > 0 ? "#8fbc8f"
      : choice.points < 0 ? "#cd5c5c"
      : "#d4a857";

    const pointSign = choice.points > 0 ? "+" : "";
    const pointLabel = `${pointSign}${choice.points} sustainability`;

    const cw = this.scale.width;
    const boxW = 1760;
    const boxX = (cw - boxW) / 2;
    const boxY = 700;
    const boxH = 460;

    const feedbackBg = this.add.graphics();
    feedbackBg.fillStyle(0x0f1a0f, 1);
    feedbackBg.fillRoundedRect(boxX, boxY, boxW, boxH, 20);
    feedbackBg.lineStyle(4, choice.points > 0 ? 0x4a7c59 : choice.points < 0 ? 0x8b3a3a : 0x8b7a3a);
    feedbackBg.strokeRoundedRect(boxX, boxY, boxW, boxH, 20);

    this.add.text(cw / 2, boxY + 50, pointLabel, {
      fontFamily: "'Courier New', monospace",
      fontSize: "40px",
      color: pointColor,
      fontStyle: "bold",
    }).setOrigin(0.5);

    const feedbackText = this.add.text(boxX + 80, boxY + 130, "", {
      fontFamily: "Georgia, 'Times New Roman', serif",
      fontSize: "36px",
      color: "#c8d8c8",
      wordWrap: { width: boxW - 160 },
      lineSpacing: 12,
    });

    this.typewriterEffect(choice.feedback, feedbackText, () => {
      this.showContinueButton(choice.next);
    });
  }

  showContinueButton(nextId) {
    const btn = this.add.container(this.scale.width / 2, 1100);

    const bg = this.add.graphics();
    bg.fillStyle(0x4a7c59, 1);
    bg.fillRoundedRect(-200, -40, 400, 80, 12);

    const label = this.add.text(0, 0, "CONTINUE →", {
      fontFamily: "'Courier New', monospace",
      fontSize: "32px",
      color: "#dce8dc",
      fontStyle: "bold",
    }).setOrigin(0.5);

    btn.add([bg, label]);
    btn.setSize(400, 80);
    btn.setInteractive({ useHandCursor: true });

    btn.setAlpha(0);
    this.tweens.add({
      targets: btn,
      alpha: 1,
      duration: 400,
    });

    btn.on("pointerover", () => {
      bg.clear();
      bg.fillStyle(0x5a9c6e, 1);
      bg.fillRoundedRect(-200, -40, 400, 80, 12);
    });

    btn.on("pointerout", () => {
      bg.clear();
      bg.fillStyle(0x4a7c59, 1);
      bg.fillRoundedRect(-200, -40, 400, 80, 12);
    });

    btn.on("pointerdown", () => {
      if (nextId === "end") {
        this.cameras.main.fadeOut(500, 0, 0, 0);
        this.cameras.main.once("camerafadeoutcomplete", () => {
          this.scene.start("ResultsScene", {
            score: this.score,
            history: this.history,
          });
        });
      } else {
        this.cameras.main.fadeOut(300, 0, 0, 0);
        this.cameras.main.once("camerafadeoutcomplete", () => {
          this.scene.start("StoryScene", {
            scenarioId: nextId,
            score: this.score,
            history: this.history,
          });
        });
      }
    });
  }
}
