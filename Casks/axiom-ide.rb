cask "axiom-ide" do
  version "0.1.11"
  sha256 "44753154bf8685cc7237ed17aad7dc7409d5a627d853c9bd4988fb2eedb39bc1"

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
