cask "cousebara" do
  version "1.6.0"
  sha256 "2af6b3783c5d34884a4abc3d4a7ca4030a0e189f0d2a78366326c6817d9793bc"

  url "https://github.com/oronbz/Cousebara/releases/download/v#{version}/Cousebara.zip"
  name "Cousebara"
  desc "Menu bar app for monitoring GitHub Copilot premium interaction usage"
  homepage "https://github.com/oronbz/Cousebara"

  depends_on macos: ">= :sonoma"

  app "Cousebara.app"

  zap trash: [
    "~/Library/Caches/bz.oron.Cousebara",
    "~/Library/Preferences/bz.oron.Cousebara.plist",
  ]
end
