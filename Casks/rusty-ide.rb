cask "rusty-ide" do
  version "0.1.12"
  sha256 "b65de79e68c73b306809b200444aaea4a4e9633a4b9a1d2d91b34f2ad30b236c"

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
