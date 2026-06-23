# Template Usage: multi-simple-report

This is the working template for a `multi-simple-report` project. It is designed to manage multiple session or homework report subfolders within the same repository.

## Setup

1. Ensure `typst` is installed and available in your shell (or use `nix develop`).
2. Run `unsarep install multi-simple-report --session s1` to create a new session folder.
3. Open `s1/report.typ` and fill in the report metadata variables (title, course, teacher, authors, etc.).
4. Put your screenshots or images in `s1/img/` and write your document sections in the `s1/sections/` directory.
5. Run `unsarep prepare` inside the project to compile your reports.

## Project Configuration

You can customize the project structure in `unsareport.json`:

- `prepare.input.srcDir`: Set this if your code is in a directory other than `src/`.
- `prepare.output.submissionDir`: Change where the final files are generated.

## Features

- **Multiple Sessions**: Keep multiple reports organized under subdirectories.
- **Dynamic Cover Page**: The template automatically formats a standard cover page based on your metadata.
- **Dynamic Author Heading**: Shows "INTEGRANTES" if there are multiple students, or "PRESENTADO POR" if there is only one.
