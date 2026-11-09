cask "pullfather" do
  version "0.12.1"
  sha256 "bebd911aa9f49d374af7b6851606391639c438ab979ad50cd40e1eb6eb48e9eb"

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
