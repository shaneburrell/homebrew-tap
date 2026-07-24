class Quiksync < Formula
  desc "Resilient one-way file copy and sync with FastCDC deltas"
  homepage "https://github.com/shaneburrell/quiksync"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.4.0/quiksync_0.4.0_darwin_arm64.tar.gz"
      sha256 "533138b809dae91288a7b012d334c37cd662f01c0c4ba084029604d2a5b314f2"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.4.0/quiksync_0.4.0_darwin_amd64.tar.gz"
      sha256 "ebff24d4d4ab34f0f37bcc1d71146b7d35bbd7a59d9ae7b7e0813de6bb8811a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.4.0/quiksync_0.4.0_linux_arm64.tar.gz"
      sha256 "4e52e6d72c79dca189fed77402c96f02901fc222576df7b04a1eb8403370d755"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.4.0/quiksync_0.4.0_linux_amd64.tar.gz"
      sha256 "d0eb53175f663713a628939d13e18a2944377900ec207b743bbf11d8aa9e7bf3"
    end
  end

  def install
    bin.install "quiksync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quiksync --version")
  end
end
