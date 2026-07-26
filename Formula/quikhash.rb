class Quikhash < Formula
  desc "FastCDC + BLAKE3 content-addressed hasher with reconstruction"
  homepage "https://github.com/shaneburrell/quikhash"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.0/quikhash_0.1.0_darwin_arm64.tar.gz"
      sha256 "ddd759f24b0b83578aea8e3cff00d5c4e3b08e3a3b766038bcd72ac4a2f0e5bd"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.0/quikhash_0.1.0_darwin_amd64.tar.gz"
      sha256 "dd2d4722be092e54afa0bec0b7bdcdeeface4db3ac94ebb877c03520c6b13b08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.0/quikhash_0.1.0_linux_arm64.tar.gz"
      sha256 "cdcc3da4f32ab79611cfcde28dd87f54a594ddf5104b6238ac2b90247dc02e75"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.0/quikhash_0.1.0_linux_amd64.tar.gz"
      sha256 "196451518e363d8f1dcbfe61958c7d1e8e554514eb0984161acde0e74aba60e0"
    end
  end

  def install
    bin.install "quikhash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikhash --version")
  end
end
