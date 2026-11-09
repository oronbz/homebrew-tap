cask "pullfather" do
  version "0.12.2"
  sha256 "ea89fe7d5a50ae818802388f821cd173b5a76727f77d41132e7028e0f4271f09"

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
