/**
 * Catalog of draggable fridge items and their correct zone for sustainability rules.
 * Extend with sprite keys once assets exist in PreloadScene.
 *
 * correctZoneId must match a zoneId from fridgeZones.js
 */
export const ITEMS_CATALOG = [
  {
    id: "milk",
    label: "Milk",
    correctZoneId: "lower_shelf",
    spriteKey: null,
  },
  {
    id: "lettuce",
    label: "Lettuce",
    correctZoneId: "crisper",
    spriteKey: null,
  },
  {
    id: "leftovers",
    label: "Leftovers",
    correctZoneId: "upper_shelf",
    spriteKey: null,
  },
];
