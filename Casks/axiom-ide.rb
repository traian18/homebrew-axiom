cask "axiom-ide" do
  version "0.1.12"
  sha256 "b65de79e68c73b306809b200444aaea4a4e9633a4b9a1d2d91b34f2ad30b236c"

  url "https://github.com/traian18/axiom/releases/download/v#{version}/Axiom-IDE_#{version}_aarch64.dmg"
  name "Axiom IDE"
  desc "AI-assisted coding IDE"
  homepage "https://github.com/traian18/axiom"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Axiom-IDE.app"

  zap trash: [
    "~/Library/Application Support/com.suciuvictortraian.axiom",
    "~/Library/Caches/com.suciuvictortraian.axiom",
    "~/Library/Preferences/com.suciuvictortraian.axiom.plist",
    "~/Library/Saved Application State/com.suciuvictortraian.axiom.savedState",
  ]
end
