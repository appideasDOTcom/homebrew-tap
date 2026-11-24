cask "orchestratinator" do
  version "0.15.1"
  sha256 "64d6b2b0b47763425caa9fd1d32f3a962cb37a77731c1ecf1f25b79e0ff2467f"

  url "https://appideas-mcp-orchestratinator-release.sfo3.cdn.digitaloceanspaces.com/desktop-app/darwin/arm64/Orchestratinator-#{version}-arm64.dmg"
  name "Orchestratinator"
  desc "APP(ideas) MCP Orchestratinator: the board, its host and the floor as one app"
  homepage "https://appideas.com/orchestratinator/"

  livecheck do
    url "https://appideas-mcp-orchestratinator-release.sfo3.cdn.digitaloceanspaces.com/desktop-app/darwin/arm64/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Orchestratinator.app"

  zap trash: [
    "~/Library/Application Support/Orchestratinator",
    "~/Library/Caches/com.appideas.orchestratinator",
    "~/Library/Caches/com.appideas.orchestratinator.ShipIt",
    "~/Library/HTTPStorages/com.appideas.orchestratinator",
    "~/Library/Preferences/com.appideas.orchestratinator.plist",
    "~/Library/Saved Application State/com.appideas.orchestratinator.savedState",
  ]
end
