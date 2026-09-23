cask "shepherd" do
  version "0.1.1"
  sha256 "3fc4204fea2d6dd2ab4f33d398482ae26fc578471743b823dccdb1f2b499256f"

  url "https://github.com/oronbz/shepherd/releases/download/v#{version}/Shepherd.zip"
  name "Shepherd"
  desc "Desktop companion that reacts to coding agents running in Herdr"
  homepage "https://github.com/oronbz/shepherd"

  depends_on macos: :tahoe

  app "Shepherd.app"

  uninstall quit: "com.oronbz.Shepherd"

  zap trash: [
    "~/Library/Application Support/Shepherd",
    "~/Library/Preferences/com.oronbz.Shepherd.plist",
  ]
end
