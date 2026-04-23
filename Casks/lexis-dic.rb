cask "lexis-dic" do
  version "1.0.18"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  url "https://github.com/seabornlee/ai-english-dictionary/releases/download/v1.0.18/LexisDic-1.0.18.dmg"
  name "LexisDic"
  desc "AI-powered English Dictionary for macOS"
  homepage "https://github.com/seabornlee/ai-english-dictionary"

  app "LexisDic.app"

  zap trash: [
    "~/Library/Application Support/LexisDic",
    "~/Library/Preferences/site.waterlee.aidic.LexisDic.plist",
  ]
end
