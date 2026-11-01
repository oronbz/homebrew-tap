cask "pullfather" do
  version "0.11.1"
  sha256 "0647b67c2a9dbf127b706fc14ad5572d423d3df0309acc7afa995bda1a8e6723"

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
