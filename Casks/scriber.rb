cask "scriber" do
  version "0.9.0"
  sha256 "1a8f0008f42a74a4579abd979049f086ef9f3b39d43eba22e1f0516857e8c24f"

  url "https://github.com/gafiegarcia/scriber/releases/download/v#{version}/Scriber-#{version}.dmg",
      verified: "github.com/gafiegarcia/scriber/"
  name "Scriber"
  desc "Menu bar dictation app that types transcribed speech into any app"
  homepage "https://github.com/gafiegarcia/scriber"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Scriber.app"

  uninstall quit: "com.gafiegarcia.scriber"

  # The stored ElevenLabs API key is deliberately not listed: it lives in the
  # login Keychain, and a cask should not delete a credential the user may still
  # want. Remove it from Keychain Access if you want it gone.
  zap trash: [
    "~/Library/Application Support/Scriber",
    "~/Library/Caches/com.gafiegarcia.scriber",
    "~/Library/HTTPStorages/com.gafiegarcia.scriber",
    "~/Library/Preferences/com.gafiegarcia.scriber.plist",
  ]
end
