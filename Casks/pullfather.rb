cask "pullfather" do
  version "0.10.1"
  sha256 "73030358d1415059fe49adf68807bd3722040443e92ebc0f51bf7e47b7faa29e"

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
