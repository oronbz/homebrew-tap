cask "shepherd" do
  version "0.1.2"
  sha256 "b9fecc3a1cbcabf09c2571a9d4cf3aa6eb8f893fbc806b2fe9e094b415e15da1"

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
