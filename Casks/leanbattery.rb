cask "leanbattery" do
  version "0.3.0"
  sha256 "aca5624bf83f684edefe1f99a7779b5afb507302f573fe4622cd11dc19c3cd46"

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
