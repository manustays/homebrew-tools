cask "quay" do
  version "0.19.0"
  sha256 "0e85a63440ad16f15a39193be5abb1612b16582a1d28fe798f0654469a59dafe"

  url "https://github.com/manustays/quay/releases/download/v#{version}/Quay_#{version}_universal.dmg"
  name "Quay"
  desc "Menubar launcher for CLI coding agents"
  homepage "https://github.com/manustays/quay"

  livecheck do
    url :url
    strategy :github_latest
  end

  # in-app tauri updater handles upgrades; keep brew from fighting it
  auto_updates true
  # binary's Mach-O target is 10.13 (x86_64) / 11.0 (arm64), but Homebrew disabled
  # depends_on values below :catalina, so this is the lowest expressible floor.
  depends_on macos: :catalina

  app "Quay.app"

  # unsigned build: strip Gatekeeper quarantine so it opens on first launch
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Quay.app"]
  end

  zap trash: [
    "~/Library/Application Support/am.abhi.quay",
    "~/Library/Preferences/am.abhi.quay.plist",
    "~/Library/Saved Application State/am.abhi.quay.savedState",
  ]
end
