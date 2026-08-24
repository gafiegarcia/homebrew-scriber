# gafiegarcia/scriber

The Homebrew tap for [Scriber](https://github.com/gafiegarcia/scriber), a macOS dictation app that types transcribed speech into whatever you are already in.

## Install

```bash
brew install --cask gafiegarcia/scriber/scriber
```

That taps this repository and installs in one step; `brew tap` first is not needed. Scriber needs Apple silicon and macOS 26 Tahoe or newer.

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
