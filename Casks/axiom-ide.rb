cask "axiom-ide" do
  version "0.1.7"
  sha256 "56e4294b7e76fe94b441a2abcdbbb0053f2bb161b75bbadd37a63ac9117e50ba"

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
