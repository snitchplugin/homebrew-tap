class Snitch < Formula
  desc "Local security scanner powered by your own AI CLI or OpenRouter"
  homepage "https://snitchplugin.com"
  version "1.0.5"
  license "UNLICENSED"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-macos-arm64"
      sha256 "ed0776a53b1cccafa1f038529e5b3b0b9dd52fd27dfb3ec59f94688154a90736"
    else
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-macos-x64"
      sha256 "58d0c2ae10ed2f5f4dea929071e6d87bdc5e33dffe796b5fc297f2575d48066d"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-linux-arm64"
      sha256 "29b31620d0f47f9497bd8297585cb6a8570a81ef7ca909dc56ff05e4d2e16f5f"
    else
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-linux-x64"
      sha256 "e02817f7a23aff688660580916d56d573015e7f6dc2afbbec66eb0a55a43542d"
    end
  end

  def install
    bin.install Dir["snitch-*"].first => "snitch"
  end

  test do
    assert_match "snitch", shell_output("#{bin}/snitch help 2>&1")
  end
end
