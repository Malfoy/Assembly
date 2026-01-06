# Assembly slides in Typst

This repository contains Typst sources for the assembly course and practical decks.

## Install Typst

Choose one of the following:

- macOS (Homebrew):
  ```sh
  brew install typst
  ```
- Linux (APT):
  ```sh
  sudo apt install typst
  ```
- Rust (cargo):
  ```sh
  cargo install typst-cli
  ```

## Compile the slides

From the repository root:

```sh
typst compile cesky_course_assembly_2025.typ
typst compile practical.typ
typst compile short.typ
```

This generates PDF files next to the `.typ` files. The PDFs are intentionally ignored by git.

Or more convenient to edit 
```sh
typst watch cesky_course_assembly_2025.typ
```
