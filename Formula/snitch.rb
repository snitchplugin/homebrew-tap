class Snitch < Formula
  desc "Local security scanner powered by your own AI CLI or OpenRouter"
  homepage "https://snitchplugin.com"
  version "1.0.0"
  license "UNLICENSED"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/naieum/Snitch/releases/download/cli-v#{version}/snitch-macos-arm64"
      sha256 "3ca0e5831058d156c3ade6c389377d10aacd6a42597ab73d505cb3e893f3ed9b"
    else
      url "https://github.com/naieum/Snitch/releases/download/cli-v#{version}/snitch-macos-x64"
      sha256 "d922adb360e099a8c7555a9758ecd9f14f30e246c225cd0fb2b2a962874541c9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/naieum/Snitch/releases/download/cli-v#{version}/snitch-linux-arm64"
      sha256 "9ea5d595224aacd65e9b9ba19f5c8fa7f8420a473d741658a624bcb82b16d2db"
    else
      url "https://github.com/naieum/Snitch/releases/download/cli-v#{version}/snitch-linux-x64"
      sha256 "fea90979c04055567cb7516f165f28f1f2d650ab0af0a173454a5b80b006acc3"
    end
  end

  def install
    bin.install Dir["snitch-*"].first => "snitch"
  end

  test do
    assert_match "snitch", shell_output("#{bin}/snitch help 2>&1")
  end
end
