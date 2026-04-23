class Snitch < Formula
  desc "Local security scanner powered by your own AI CLI or OpenRouter"
  homepage "https://snitchplugin.com"
  version "1.1.7"
  license "UNLICENSED"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-macos-arm64"
      sha256 "e4edf6a98d4282d10e69e5f4c1e6f6553d5bc0aa1e37a688b18cdbd33752c74f"
    else
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-macos-x64"
      sha256 "a18e1948567a15ac5cbf033e347495fab8126a807b63b8ceb673dc147483554f"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-linux-arm64"
      sha256 "4e9dddc84380cfe1ff2fc7cd60283fdedb2245bbb118b35c22cf60ca774fe53b"
    else
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-linux-x64"
      sha256 "bd104c6801346e6fd59543fcbbd37172f244c4dd427b85c35b2a98046f095ee3"
    end
  end

  def install
    bin.install Dir["snitch-*"].first => "snitch"
  end

  test do
    assert_match "snitch", shell_output("#{bin}/snitch help 2>&1")
  end
end
