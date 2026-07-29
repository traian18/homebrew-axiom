cask "rusty-ide" do
  version "0.1.13"
  sha256 "87fc71f942824e11ec05e14b9e16483f2e21330cbe70ba9aa524731e03c7847f"

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
