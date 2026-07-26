class Quikhash < Formula
  desc "FastCDC + BLAKE3 content-addressed hasher with reconstruction"
  homepage "https://github.com/shaneburrell/quikhash"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.1/quikhash_0.1.1_darwin_arm64.tar.gz"
      sha256 "3cb5f98cd21e9757551b421c6e5e9b526d4e2a9e5d49b4f72e94cabf53bfcbf1"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.1/quikhash_0.1.1_darwin_amd64.tar.gz"
      sha256 "e67affd77b1ea7ca75cef67e6ae692ffcf6f3e94147f3aecb56ced374c0f087d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.1/quikhash_0.1.1_linux_arm64.tar.gz"
      sha256 "a2d7d1aad313fae8cccbca1dd1350f9a7296edf06b9dca7fb070e2b22a6ccd0f"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.1/quikhash_0.1.1_linux_amd64.tar.gz"
      sha256 "33464b99370bd2e2cfc9e58d100265209e462c824868868f2af39cafda50c41d"
    end
  end

  def install
    bin.install "quikhash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikhash --version")
  end
end
