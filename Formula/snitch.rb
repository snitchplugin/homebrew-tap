class Snitch < Formula
  desc "Local security scanner powered by your own AI CLI or OpenRouter"
  homepage "https://snitchplugin.com"
  version "1.0.4"
  license "UNLICENSED"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-macos-arm64"
      sha256 "211e7421a7e5fcce1b8cf651b42886527269ab9d171468d7f122b51b91c1ffca"
    else
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-macos-x64"
      sha256 "56eca737baa4c6599e963858d558d9571395dfb13462f7c14f33df7f76a099c7"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-linux-arm64"
      sha256 "b5f7a733411fe63cb5392c439eb2df9bfa1f891c0976a147af75e560096b31f1"
    else
      url "https://github.com/snitchplugin/homebrew-tap/releases/download/cli-v#{version}/snitch-linux-x64"
      sha256 "1c644e51a76afc63f206ec5bf99af1cf7f59ced4b50316b074ec429ec3ff9a58"
    end
  end

  def install
    bin.install Dir["snitch-*"].first => "snitch"
  end

  test do
    assert_match "snitch", shell_output("#{bin}/snitch help 2>&1")
  end
end
