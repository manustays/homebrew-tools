cask "leanbattery" do
  version "0.1.0"
  sha256 "a99b2d3850e3971e9a62fa7aad628ae765472366e0435b589c60d30fb9c07cc2"

  url "https://github.com/manustays/lean-battery/releases/download/v#{version}/LeanBattery-#{version}.zip"
  name "LeanBattery"
  desc "Slim menubar battery indicator with per-app energy stats"
  homepage "https://abhi.am/lean-battery"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "LeanBattery.app"

  uninstall launchctl: "am.abhi.leanbattery"

  zap trash: [
    "~/Library/LaunchAgents/am.abhi.leanbattery.plist",
    "~/Library/Preferences/am.abhi.leanbattery.plist",
  ]
end
