cask "sitter" do
  version "1.0.0"
  sha256 "cb38f40e74719067f26c65d6015232356b63710aa82084fec04e534b73796df4"

  url "https://github.com/oronbz/Sitter/releases/download/v#{version}/Sitter.zip"
  name "Sitter"
  desc "Menu bar app for alternating between sitting and standing at a standing desk"
  homepage "https://github.com/oronbz/Sitter"

  depends_on macos: ">= :sequoia"

  app "Sitter.app"

  zap trash: [
    "~/Library/Caches/bz.oron.Sitter",
    "~/Library/Preferences/bz.oron.Sitter.plist",
  ]
end
