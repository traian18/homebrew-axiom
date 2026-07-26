cask "axiom-ide" do
  arch arm: "aarch64"

  version "0.1.2"
  sha256 arm: "9124ceab29ff7e4a2c768ce3eaae38807a576bc4a4c1edd8f8d44359fabf6c91"

  url "https://github.com/traian18/axiom/releases/download/v#{version}/Axiom-IDE_#{version}_#{arch}.dmg"
  name "Axiom IDE"
  desc "AI-assisted coding IDE"
  homepage "https://github.com/traian18/axiom"

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Axiom-IDE.app"

  zap trash: [
    "~/Library/Application Support/com.suciuvictortraian.axiom",
    "~/Library/Caches/com.suciuvictortraian.axiom",
    "~/Library/Preferences/com.suciuvictortraian.axiom.plist",
    "~/Library/Saved Application State/com.suciuvictortraian.axiom.savedState",
  ]
end
