class Modelmove < Formula
  desc "Sparse-delta, verified transfer and migration of LLM model weights"
  homepage "https://github.com/shaneburrell/modelmove"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.6/modelmove_0.1.6_darwin_arm64.tar.gz"
      sha256 "5464fdc4e2702aefa534f27cfd92c15536184d78f15b4e3d13d0d1af331dfcd8"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.6/modelmove_0.1.6_darwin_amd64.tar.gz"
      sha256 "f217c20aa7b4a292a4406379f5c0f3d31f2a5ac142b5f33845c3f5d394eb5880"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.6/modelmove_0.1.6_linux_arm64.tar.gz"
      sha256 "0cf0b47ae4e709c7046d76a741b216f23d3a9ff4500ce6e9e37834019feeb83a"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.6/modelmove_0.1.6_linux_amd64.tar.gz"
      sha256 "29b0fdad671a16915770a16389537583babf5cffb6d407b604a6ed56c7a71466"
    end
  end

  def install
    bin.install "modelmove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelmove --version")
  end
end
