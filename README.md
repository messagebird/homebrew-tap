# Bird Homebrew Tap

Homebrew formulae for [Bird](https://bird.com) tools.

## bird CLI

Operate the Bird platform from a shell, script, or AI agent: JSON output,
semantic exit codes, and safe retries.

```sh
brew install messagebird/tap/bird
```

Or tap once, then install by name:

```sh
brew tap messagebird/tap
brew install bird
```

Or in a `Brewfile`:

```ruby
tap "messagebird/tap"
brew "bird"
```

Then authenticate with `bird auth login`. Full docs: https://bird.com/cli

## Notes

Formulae here are generated and published automatically on each release; do not
edit them by hand. See [Homebrew's documentation](https://docs.brew.sh) for
`brew` usage.
