cask "cousebar" do
  version "1.0.0"
  sha256 "cfe0caef4e963f349a4ebc7a7ac2b49b79081fefd6c6cb766c59082921eaa065"

  url "https://github.com/oronbz/CouseBar/releases/download/v#{version}/CouseBar.zip"
  name "CouseBar"
  desc "Menu bar app for monitoring GitHub Copilot premium interaction usage"
  homepage "https://github.com/oronbz/CouseBar"

  depends_on macos: ">= :sonoma"

  app "CouseBar.app"

  zap trash: [
    "~/Library/Caches/com.gett.CouseBar",
    "~/Library/Preferences/com.gett.CouseBar.plist",
  ]
end
