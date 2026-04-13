/**
 * Fridge storage zones for sustainability sorting (correct placement).
 * Coordinates are placeholders — align with your fridge sprite/layout later.
 *
 * zoneId: stable key for drop validation
 * label: UI / debug name
 * rect: { x, y, w, h } in game pixels (top-left origin)
 */
export const FRIDGE_ZONES = [
  {
    zoneId: "upper_shelf",
    label: "Upper shelf (ready-to-eat)",
    rect: { x: 120, y: 80, w: 400, h: 100 },
  },
  {
    zoneId: "lower_shelf",
    label: "Lower shelf (raw / defrosting)",
    rect: { x: 120, y: 200, w: 400, h: 100 },
  },
  {
    zoneId: "crisper",
    label: "Crisper (produce)",
    rect: { x: 120, y: 320, w: 280, h: 120 },
  },
  {
    zoneId: "door",
    label: "Door (condiments / stable items)",
    rect: { x: 540, y: 80, w: 120, h: 360 },
  },
  {
    zoneId: "freezer",
    label: "Freezer",
    rect: { x: 120, y: 460, w: 540, h: 100 },
  },
];
