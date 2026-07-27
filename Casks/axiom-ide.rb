cask "axiom-ide" do
  version "0.1.8"
  sha256 "d76cafae50fd178f6290502338c05cc8e2e2df19aa1ae158d978ed70893ca372"

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
