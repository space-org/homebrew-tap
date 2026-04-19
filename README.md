# homebrew-tap

Homebrew tap for [Space](https://getspace.dev) command-line tools.

## Install

```sh
brew install space-org/tap/space-cli
```

Homebrew expands `space-org/tap` to this repository.

## Formulae

- **`space-cli`** — query and edit your local Space flashcard database from the command line. Source: [space-org/space-cli](https://github.com/space-org/space-cli).

## How this tap is maintained

The `space-cli` formula is regenerated automatically by the [release workflow](https://github.com/space-org/space-cli/blob/main/.github/workflows/release.yml) in the `space-cli` repo every time a `v*` tag is pushed. The workflow downloads `checksums.txt` from the new GitHub Release, renders `Formula/space-cli.rb` with fresh URLs and SHA256 hashes, and commits it here. Manual edits to the formula will be overwritten on the next release.
