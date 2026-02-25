cask "cousebara" do
  version "1.5.0"
  sha256 "e3fd99b7e540fe59cb7aa06cdf807c6c4907ca5605ce5e89b756c849d12bc05a"

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
