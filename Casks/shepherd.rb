cask "shepherd" do
  version "0.1.6"
  sha256 "7bf2e0f2b02a114a7501f4be4b3c955f28cbabecf043acfb9701d186a6582a57"

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
