class LexisDic < Formula
  desc "AI-powered English Dictionary for macOS"
  homepage "https://github.com/seabornlee/ai-dic-repos"
  url "https://github.com/seabornlee/ai-dic-repos/releases/download/v1.0.0/AIDictionary-1.0.0.dmg"
  sha256 "1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"
  version "1.0.0"
  license "MIT"
  desc "AI-powered English Dictionary for macOS with menu bar integration"

  def install
    # Mount the DMG
    mount_point = mount_dmg

    # Copy the .app to Applications
    app = mount_point.join("AIDictionary.app")
    if app.exist?
      cp_r app, "/Applications/AIDictionary.app"
    else
      raise "AIDictionary.app not found in DMG"
    end

    # Unmount the DMG
    system "hdiutil", "detach", mount_point
  end

  def post_install
    # Set proper permissions
    system "chmod", "-R", "755", "/Applications/AIDictionary.app"
  end

  test do
    assert_true File.exist?("/Applications/AIDictionary.app")
  end
end
