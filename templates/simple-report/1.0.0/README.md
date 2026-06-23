# Template Usage: simple-report

This is the working template for a `simple-report` project, designed for a single academic activity or report.

## Setup

1. Ensure `typst` is installed and available in your shell (or use `nix develop`).
2. Open `report.typ` and fill in the report metadata variables (title, course, teacher, authors, etc.).
3. Put your screenshots or images in `img/` and write your document sections in the `sections/` directory.
4. Run `unsarep prepare` to compile the report and create the submission bundle in `submission/`.

## Project Configuration

You can customize the project structure in `unsareport.json`:

- `prepare.input.reportFile`: Set this if you rename `report.typ`.
- `prepare.input.srcDir`: Set this if your code is in a directory other than `src/`.
- `prepare.output.submissionDir`: Change where the final files are generated.

## Features

- **Dynamic Cover Page**: The template automatically formats a standard cover page based on your metadata.
- **Dynamic Author Heading**: Shows "INTEGRANTES" if there are multiple students, or "PRESENTADO POR" if there is only one.
