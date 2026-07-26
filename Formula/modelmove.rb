class Modelmove < Formula
  desc "Sparse-delta, verified transfer and migration of LLM model weights"
  homepage "https://github.com/shaneburrell/modelmove"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.0/modelmove_0.1.0_darwin_arm64.tar.gz"
      sha256 "333bcb34b22506e1562213dd6ff24fe0a0176e10c824e68874766bec227c7de2"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.0/modelmove_0.1.0_darwin_amd64.tar.gz"
      sha256 "87d6eefa037dec4ae70ef9c355bbe1bd44028f4fd38da6d89f8ac694a1af8636"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.0/modelmove_0.1.0_linux_arm64.tar.gz"
      sha256 "26c10f4aa5c0c46bb7c38cfcb0a663cac5f79a72d52719cb0022aff50fbb0d6e"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.0/modelmove_0.1.0_linux_amd64.tar.gz"
      sha256 "e7bb9a1c16df0857aa43ce2fb7c7523f55dfe8f34374281749276532fa62b6dc"
    end
  end

  def install
    bin.install "modelmove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelmove --version")
  end
end
