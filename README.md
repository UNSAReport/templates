# UNSAReport Templates

Typst templates for UNSA Software Engineering laboratory reports.

## Available Templates

| Template | Description |
|----------|-------------|
| [lab](./lab/) | Single laboratory report template |
| [multi-lab](./multi-lab/) | Multi-laboratory report template (multiple sessions in one repo) |

## Installation

```bash
# Install with interactive template picker
unsarep install

# Install a specific template
unsarep install lab
unsarep install multi-lab
```

## Usage

### Single Lab

```bash
unsarep install lab
```

Creates a single-lab project structure:
```
.
├── unsareport.json    # Project configuration
├── report.typ        # Main report file
├── lib.typ           # Template library
├── src/              # Source code directory
├── img/              # Image assets
└── submission/       # Generated PDF and ZIP
```

### Multi Lab

For repositories containing multiple laboratory sessions:

```bash
unsarep install multi-lab
```

Creates a multi-lab project structure:
```
.
├── unsareport.json    # Project configuration
├── lib.typ           # Template library
├── l1/               # Lab 1 directory
│   ├── report.typ
│   ├── src/
│   └── submission/
└── l2/
    └── ...
```

### Adding Sessions

```bash
unsarep install multi-lab --session l3
```

## Template Structure

Each template contains:
- `manifest.json` - File manifest defining mode and entries
- `lib.typ` - Main Typst library with report components
- `report.typ` - Report template
- `sections/` - Report section templates
- `img/fixed/` - University and accreditation logos

## Development

### Creating a New Template

1. Create a new directory under `templates/`
2. Add a `manifest.json` defining the mode and entries
3. Create the Typst template files
4. Test with `unsarep install <template-name>`

### Manifest Format

**Single-mode template:**
```json
{
  "mode": "single",
  "entries": [
    { "kind": "file", "src": "lib.typ", "dest": "lib.typ", "updatable": true },
    { "kind": "file", "src": "report.typ", "dest": "report.typ" }
  ]
}
```

**Multi-mode template:**
```json
{
  "mode": "multi",
  "entries": {
    "root": [
      { "kind": "file", "src": "lib.typ", "dest": "lib.typ", "updatable": true }
    ],
    "labFiles": [
      { "kind": "file", "src": "report.typ", "dest": "{lab}/report.typ" }
    ]
  }
}
```

## License

MIT
