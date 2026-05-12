import { defineConfig } from "vite";
import { resolve } from "path";

export default defineConfig({
  root: ".",
  // Relative URLs so dist/ works under /Game3/dist/ (catalogue or static hosting).
  base: "./",
  server: {
    port: 5174,
    open: true,
  },
  build: {
    outDir: "dist",
    sourcemap: true,
    rollupOptions: {
      input: {
        main: resolve(__dirname, "index.html"),
        game: resolve(__dirname, "game.html"),
      },
    },
  },
});
