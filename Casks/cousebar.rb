cask "cousebar" do
  version "1.1.0"
  sha256 "59ecbd210052de8c49ef00ba3ff43d8ee6be3f3eda9a6c41390457f4f60177e8"

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
