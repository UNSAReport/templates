# UNSAReport Templates

Typst templates for UNSA Software Engineering laboratory reports.

## Available Templates

| Template | Description |
|----------|-------------|
| [lab](./lab/) | Standard laboratory report template with single and multi-lab support |

## Installation

```bash
# Install with interactive template picker
unsarep install

# Install a specific template
unsarep install lab
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
unsarep install lab --multi
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
unsarep install --session l3
```

## Template Structure

Each template contains:
- `manifest.json` - File manifest defining what gets installed
- `lib.typ` - Main Typst library with report components
- `report.typ` - Report template
- `sections/` - Report section templates
- `img/fixed/` - University and accreditation logos

## Development

### Creating a New Template

1. Create a new directory under `templates/`
2. Add a `manifest.json` defining the file structure
3. Create the Typst template files
4. Test with `unsarep install <template-name>`

### Manifest Format

```json
{
  "common": [
    { "kind": "file", "src": "lib.typ", "dest": "lib.typ", "updatable": true }
  ],
  "single": [
    { "kind": "file", "src": "report.typ", "dest": "report.typ" }
  ],
  "multi": {
    "root": [],
    "labFiles": []
  }
}
```

## License

MIT
