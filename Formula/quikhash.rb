class Quikhash < Formula
  desc "FastCDC + BLAKE3 content-addressed hasher with reconstruction"
  homepage "https://github.com/shaneburrell/quikhash"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.4/quikhash_0.1.4_darwin_arm64.tar.gz"
      sha256 "fdfcb43d75431a81bc210d684d49355865b322884c59ad5857abc8a2f6b50734"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.4/quikhash_0.1.4_darwin_amd64.tar.gz"
      sha256 "7acd86368ea824082b5c6e1cabd2a1b245ea6cadb207f42d74618c4224b55213"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.4/quikhash_0.1.4_linux_arm64.tar.gz"
      sha256 "a821e97a32512b176facf4ce518ada0d8c45c366b237fef73756cb1685b1e849"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.4/quikhash_0.1.4_linux_amd64.tar.gz"
      sha256 "2b0d1209e1706c6be916cedf9e45a17be40c51ac8e52c5ff3365c5228db15b0b"
    end
  end

  def install
    bin.install "quikhash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikhash --version")
  end
end
