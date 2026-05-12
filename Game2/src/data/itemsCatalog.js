/**
 * Catalog of draggable fridge items and their correct zone for sustainability rules.
 * Levels increase in difficulty with more items and shorter timers.
 * * zoneId must match a zoneId from fridgeZones.js: 
 * top_shelf, middle_shelf, bottom_shelf, crisper, door, freezer, outside.
 */
export const LEVELS_DATA = {
  1: {
    items: [
      { id: "leftovers", label: "Leftovers", correctZoneId: "top_shelf" },
      { id: "milk", label: "Milk", correctZoneId: "middle_shelf" },
      { id: "ketchup", label: "Ketchup", correctZoneId: "door" }
    ],
    timeLimit: 45
  },
  2: {
    items: [
      { id: "chicken", label: "Raw Chicken", correctZoneId: "bottom_shelf" },
      { id: "lettuce", label: "Lettuce", correctZoneId: "crisper" },
      { id: "bread", label: "Bread", correctZoneId: "outside" },
      { id: "ice_cream", label: "Ice Cream", correctZoneId: "freezer" }
    ],
    timeLimit: 30
  },
  3: {
    items: [
      { id: "milk", label: "Milk", correctZoneId: "middle_shelf" },
      { id: "leftovers", label: "Leftovers", correctZoneId: "top_shelf" },
      { id: "chicken", label: "Raw Chicken", correctZoneId: "bottom_shelf" },
      { id: "lettuce", label: "Lettuce", correctZoneId: "crisper" },
      { id: "ketchup", label: "Ketchup", correctZoneId: "door" }
    ],
    timeLimit: 25
  },
  4: {
    items: [
      { id: "yogurt", label: "Yogurt", correctZoneId: "middle_shelf" },
      { id: "eggs", label: "Eggs", correctZoneId: "middle_shelf" },
      { id: "butter", label: "Butter", correctZoneId: "door" },
      { id: "strawberries", label: "Strawberries", correctZoneId: "crisper" },
      { id: "soda", label: "Soda", correctZoneId: "door" }
    ],
    timeLimit: 22
  },
  5: {
    items: [
      { id: "steak", label: "Raw Steak", correctZoneId: "bottom_shelf" },
      { id: "juice", label: "Orange Juice", correctZoneId: "middle_shelf" },
      { id: "jam", label: "Strawberry Jam", correctZoneId: "door" },
      { id: "carrots", label: "Carrots", correctZoneId: "crisper" },
      { id: "peas", label: "Frozen Peas", correctZoneId: "freezer" }
    ],
    timeLimit: 18
  },
  6: {
    items: [
      { id: "pizza", label: "Leftover Pizza", correctZoneId: "top_shelf" },
      { id: "fish", label: "Raw Fish", correctZoneId: "bottom_shelf" },
      { id: "cheese", label: "Cheese Block", correctZoneId: "middle_shelf" },
      { id: "onions", label: "Onions", correctZoneId: "outside" },
      { id: "ice", label: "Ice Cubes", correctZoneId: "freezer" },
      { id: "mustard", label: "Mustard", correctZoneId: "door" }
    ],
    timeLimit: 15
  }
};