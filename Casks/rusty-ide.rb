cask "rusty-ide" do
  version "0.1.14"
  sha256 "fc2e86275eef83efdb6875d0f379d8c53fbfd0c8ac2d02c507a7eeec2c4cc901"

  url "https://github.com/traian18/rusty/releases/download/v#{version}/Rusty-IDE_#{version}_aarch64.dmg"
  name "Rusty IDE"
  desc "AI-assisted coding IDE"
  homepage "https://github.com/traian18/rusty"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Rusty-IDE.app"

  zap trash: [
    "~/Library/Application Support/com.suciuvictortraian.rusty",
    "~/Library/Caches/com.suciuvictortraian.rusty",
    "~/Library/Preferences/com.suciuvictortraian.rusty.plist",
    "~/Library/Saved Application State/com.suciuvictortraian.rusty.savedState",
  ]
end
