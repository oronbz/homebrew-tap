cask "sitter" do
  version "1.0.1"
  sha256 "ae3ddf53565acd688e8cd7780d18d495db7bd3657da49292b290fba04aab626a"

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
