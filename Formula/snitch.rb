class Snitch < Formula
  desc "Local security scanner powered by your own AI CLI or OpenRouter"
  homepage "https://snitchplugin.com"
  version "1.0.8"
  license "UNLICENSED"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-macos-arm64"
      sha256 "54aec744710e2021a08f6d05edb4432713988fe8a8fa8726ec3599b8a1b18451"
    else
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-macos-x64"
      sha256 "cb65dc9b0c83ae2c184d174b1c94fce4150993756d331120d15e351a61003b7a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-linux-arm64"
      sha256 "2e02204f386de097782b3cbad67ec77194ddf629dbac771d5e642a25a44778ec"
    else
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-linux-x64"
      sha256 "fe7b330350b5c4aa32c146a82467f664e3ba8073ba4cb7da07b9ec3773e2bee6"
    end
  end

  def install
    bin.install Dir["snitch-*"].first => "snitch"
  end

  test do
    assert_match "snitch", shell_output("#{bin}/snitch help 2>&1")
  end
end
