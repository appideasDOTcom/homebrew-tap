cask "orchestratinator" do
  version "0.16.0"
  sha256 "79e49ea8d2c4464ea444ffa09693397f0431fd7e2817919bf93384eda10a63ed"

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
