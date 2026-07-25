class Quiksync < Formula
  desc "Resilient one-way file copy and sync with FastCDC deltas"
  homepage "https://github.com/shaneburrell/quiksync"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.0/quiksync_0.5.0_darwin_arm64.tar.gz"
      sha256 "4481b824c915a7f3243bbfcc9f65f480707fa17349efa2898da8ff9df9e2d4a9"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.0/quiksync_0.5.0_darwin_amd64.tar.gz"
      sha256 "d21038a9997f2e50e7cdcab8d2e4d55cf3d6a781a780918b395ece71d3b2dd28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.0/quiksync_0.5.0_linux_arm64.tar.gz"
      sha256 "060d1a3fe039eb193495fb7c8c60a30862cfd1bc979a808c6cba134cafdb7046"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.0/quiksync_0.5.0_linux_amd64.tar.gz"
      sha256 "3166aff3195676077db47d717ea96e559b1feda48856169e1caa06a822d39cc9"
    end
  end

  def install
    bin.install "quiksync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quiksync --version")
  end
end
