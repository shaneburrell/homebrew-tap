class Quiksync < Formula
  desc "Resilient one-way file copy and sync with FastCDC deltas"
  homepage "https://github.com/shaneburrell/quiksync"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.3/quiksync_0.5.3_darwin_arm64.tar.gz"
      sha256 "4872db1f93d082498ebd78caed601110370edf106ab4f9b21c36d98a04bf61e6"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.3/quiksync_0.5.3_darwin_amd64.tar.gz"
      sha256 "db7f47f934df06c2c32dc7b7bf6057469326433382f88fe76f0a87dfa27ea5f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.3/quiksync_0.5.3_linux_arm64.tar.gz"
      sha256 "77078e5ad909bc39259a627adb6d7f4d34d8b49938e53f9d124ed17d409fc9b7"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.3/quiksync_0.5.3_linux_amd64.tar.gz"
      sha256 "8b575bb2b03e5ea759e1a693ecc0044fab73718e469d6defa9fbedaa5948a64b"
    end
  end

  def install
    bin.install "quiksync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quiksync --version")
  end
end
