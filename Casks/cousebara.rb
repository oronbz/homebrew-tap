cask "cousebara" do
  version "2.0.2"
  sha256 "983fff0bdd3f479cea33e4d4e411139dd4f5b6189e5dc2acad254365c7a6d83c"

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
