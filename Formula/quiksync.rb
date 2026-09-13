class Quiksync < Formula
  desc "Resilient one-way file copy and sync with FastCDC deltas"
  homepage "https://github.com/shaneburrell/quiksync"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.7/quiksync_0.5.7_darwin_arm64.tar.gz"
      sha256 "37db48feec8ce634aec0cf06ee8dfec203c1f53b715905e4f0f693c19a4d087b"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.7/quiksync_0.5.7_darwin_amd64.tar.gz"
      sha256 "da956b7ea28f9e4376e448a5bec7d841a28575fd5788e53b5da54f18f97c72d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.7/quiksync_0.5.7_linux_arm64.tar.gz"
      sha256 "cbd001bce19ee1bffb30887676a434d9d03b2ea048ef8ce1dc31d925e2fb691c"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.7/quiksync_0.5.7_linux_amd64.tar.gz"
      sha256 "716bd657f985aede1602a5624dbd62d4713ab8259828953712351508b96621fe"
    end
  end

  def install
    bin.install "quiksync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quiksync --version")
  end
end
