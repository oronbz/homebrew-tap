cask "shepherd" do
  version "0.1.4"
  sha256 "32a856f0be8b6586b7eeee9dc80da12a06d3598f04a06df1f6618a903adc1e5c"

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
