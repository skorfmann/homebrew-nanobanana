# Homebrew Tap for Nanobanana

This is the official Homebrew tap for [nanobanana](https://github.com/skorfmann/nanobanana), a CLI tool for generating images using Google's Gemini API.

## Installation

```bash
brew tap skorfmann/nanobanana
brew install nanobanana
```

## Usage

```bash
# Set your API key
export GEMINI_API_KEY="your-api-key"

# Generate an image
nanobanana "a cute cat"

# Check version
nanobanana -version
```

## Updating

```bash
brew update
brew upgrade nanobanana
```

## More Information

See the [main repository](https://github.com/skorfmann/nanobanana) for full documentation.
