# gafiegarcia/tap

Homebrew casks for my apps.

## Install

```bash
brew install --cask gafiegarcia/tap/scriber
```

That taps this repository and installs in one step; `brew tap` first is not needed.

## Casks

| Cask | Description |
| --- | --- |
| [scriber](Casks/scriber.rb) | Menu bar dictation app that types transcribed speech into any app. [Repository](https://github.com/gafiegarcia/scriber) |

## Update and remove

```bash
brew upgrade --cask scriber
```

```bash
brew uninstall --cask scriber
```

`uninstall` leaves your dictation history and settings in place. To remove those as well:

```bash
brew uninstall --zap --cask scriber
```

Your ElevenLabs API key is stored in the login Keychain and is left alone either way. Remove it from Keychain Access if you want it gone.
