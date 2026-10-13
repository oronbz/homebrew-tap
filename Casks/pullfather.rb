cask "pullfather" do
  version "0.5.0"
  sha256 "ff9df23b0f0645ae2f82899751087f9aeb58f6c089227ab0b89336498c4ec11b"

  url "https://github.com/oronbz/pullfather/releases/download/v#{version}/Pullfather.zip"
  name "The Pullfather"
  desc "Menu bar app for GitHub pull requests"
  homepage "https://github.com/oronbz/pullfather"

  depends_on macos: :tahoe

  app "Pullfather.app"

  uninstall quit: "com.oronbz.Pullfather"

  zap trash: [
    "~/Library/Application Support/Pullfather",
    "~/Library/Preferences/com.oronbz.Pullfather.plist",
  ]
end
