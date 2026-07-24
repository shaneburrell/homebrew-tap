class Quiksync < Formula
  desc "Resilient one-way file copy and sync with FastCDC deltas"
  homepage "https://github.com/shaneburrell/quiksync"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.2.0/quiksync_0.2.0_darwin_arm64.tar.gz"
      sha256 "feb2be26a3463e7c53d9ece73dd9f4324c3ccaa00138765154995eb51b537f34"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.2.0/quiksync_0.2.0_darwin_amd64.tar.gz"
      sha256 "18b41cc38ef18e32c2e25e8414c19a6626ee6190f3756e0bedbf897669ec367a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.2.0/quiksync_0.2.0_linux_arm64.tar.gz"
      sha256 "8879f7c5e6fe794fed16f8465dea96cd3ee3cc4ea5cc8625bcf65ee8ad7ea4c2"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.2.0/quiksync_0.2.0_linux_amd64.tar.gz"
      sha256 "51dab4006d8d422ffbc0f618d89404ae95df78e8464f94be02d04a1640c0d7f6"
    end
  end

  def install
    bin.install "quiksync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quiksync --version")
  end
end
