cask "lexis-dic" do
  version "1.0.18"
  sha256 "c78a101bfef5882bb2e7a1b7116e07468853bba9ee21631761c9f38399a424e1"

  url "https://github.com/seabornlee/ai-english-dictionary/releases/download/v1.0.18/LexisDic-v1.0.18.dmg"
  name "LexisDic"
  desc "AI-powered English Dictionary for macOS"
  homepage "https://github.com/seabornlee/ai-english-dictionary"

  app "LexisDic.app"

  zap trash: [
    "~/Library/Application Support/LexisDic",
    "~/Library/Preferences/site.waterlee.aidic.LexisDic.plist",
  ]
end
