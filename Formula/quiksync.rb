class Quiksync < Formula
  desc "Resilient one-way file copy and sync with FastCDC deltas"
  homepage "https://github.com/shaneburrell/quiksync"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.3.0/quiksync_0.3.0_darwin_arm64.tar.gz"
      sha256 "07386f10dade57affbff5a30cfff45fe9dbbcb79743882e14a2ccc93be397d12"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.3.0/quiksync_0.3.0_darwin_amd64.tar.gz"
      sha256 "329273e31503818d6ed102fc3a59b7a4ce6837b7c3173e1b9e6f1d52e3fa508b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.3.0/quiksync_0.3.0_linux_arm64.tar.gz"
      sha256 "a5a237916e00272fbbc57ab63b5f014fb3e5c900572f0c42181126b0feda2e15"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.3.0/quiksync_0.3.0_linux_amd64.tar.gz"
      sha256 "093d852a7834c1943d70b0f6dd731e2f7a25f0722505ac2659fb98748e73fbc1"
    end
  end

  def install
    bin.install "quiksync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quiksync --version")
  end
end
