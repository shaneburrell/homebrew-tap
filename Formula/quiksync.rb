class Quiksync < Formula
  desc "Resilient one-way file copy and sync with FastCDC deltas"
  homepage "https://github.com/shaneburrell/quiksync"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.2/quiksync_0.5.2_darwin_arm64.tar.gz"
      sha256 "8ce8b92aa0403c17e25657c201b1b82ff1d51ab4e54c8a122f94161481a90cbc"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.2/quiksync_0.5.2_darwin_amd64.tar.gz"
      sha256 "5da04ab4e6b0551a64db283157d2d202218c96c75789bb0661a273170ac905ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.2/quiksync_0.5.2_linux_arm64.tar.gz"
      sha256 "eaf3b80b960812cc6e4e7c5b7e8d08de4b6adbdd31ece1bca7fe691a72045243"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.2/quiksync_0.5.2_linux_amd64.tar.gz"
      sha256 "711cf46809756834ffb55148b76c420285f6fad53a1cbe4a32f3891abf40e61d"
    end
  end

  def install
    bin.install "quiksync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quiksync --version")
  end
end
