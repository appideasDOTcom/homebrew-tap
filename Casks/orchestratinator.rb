cask "orchestratinator" do
  version "0.15.2"
  sha256 "6fc5163ce64cff2e652e16a53707bcc1ae67a80b4c5a2139a62a6bcc5c84f94f"

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
