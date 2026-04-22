class Snitch < Formula
  desc "Local security scanner powered by your own AI CLI or OpenRouter"
  homepage "https://snitchplugin.com"
  version "1.1.1"
  license "UNLICENSED"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-macos-arm64"
      sha256 "3e06221b139c73fd2db746c662ec5da5b4aadaa4fdf0aba1e0880e64a49f5c6c"
    else
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-macos-x64"
      sha256 "cd0b503c2fc81f219acd59975f34cb39e9d83e271af9148ea20b41effe09c8c9"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-linux-arm64"
      sha256 "6396159c14567bbe30063be36242e36585a066c840de16189e1133d8b46576d6"
    else
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-linux-x64"
      sha256 "0d5d6152cf474a916acb6683ccd38c88d8bd6d6507c12547dc7c9692e188ca2c"
    end
  end

  def install
    bin.install Dir["snitch-*"].first => "snitch"
  end

  test do
    assert_match "snitch", shell_output("#{bin}/snitch help 2>&1")
  end
end
