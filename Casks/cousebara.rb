cask "cousebara" do
  version "2.0.0"
  sha256 "8d455211cef2431b5ffa0013b2b745e10cfe88ab9b92fda16eb7098daed78b3b"

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
