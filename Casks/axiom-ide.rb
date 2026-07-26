cask "axiom-ide" do
  version "0.1.4"
  sha256 "8f6804597a0889cbdf2cc7e45f8ec7b392157070c15b0ad99ce2ac2862bab2da"

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
