cask "shepherd" do
  version "0.1.7"
  sha256 "ca1b01506ee9f045d44c54d3f5823223c39200b2c15caa248bb4b18414069e02"

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
