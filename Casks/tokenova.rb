cask "tokenova" do
  version "0.1.0"
  sha256 "92b1414fd785cea3b556e4f41c94a98391a61fc798ae94e66560b40b76a5d223"

  url "https://github.com/jkapa0417/tokenova/releases/download/v#{version}/Tokenova_0.1.0_universal.dmg",
      verified: "github.com/jkapa0417/tokenova/"
  name "Tokenova"
  desc "Menubar token-usage tracker for Claude Code, Codex CLI, and OpenCode"
  homepage "https://github.com/jkapa0417/tokenova"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Tokenova.app"

  zap trash: [
    "~/Library/Application Support/com.tokenova.app",
    "~/Library/Caches/com.tokenova.app",
    "~/Library/Logs/Tokenova",
    "~/Library/Preferences/com.tokenova.app.plist",
  ]
end
