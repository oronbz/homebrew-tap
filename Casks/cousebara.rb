cask "cousebara" do
  version "2.0.1"
  sha256 "4c5f76e1bcd142337622595902189890ef2d8774921ee69d0a6c445a280b0df0"

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
