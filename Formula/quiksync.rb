class Quiksync < Formula
  desc "Resilient one-way file copy and sync with FastCDC deltas"
  homepage "https://github.com/shaneburrell/quiksync"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.1/quiksync_0.5.1_darwin_arm64.tar.gz"
      sha256 "2899a1be0323d48ae21eca61d7ddcea2a99c32881087c89e444cc2aa495bd014"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.1/quiksync_0.5.1_darwin_amd64.tar.gz"
      sha256 "f792840bfaa0498595c17b5bca59678326a1c60c57d187b4bbe19a446a9c4b25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.1/quiksync_0.5.1_linux_arm64.tar.gz"
      sha256 "60b3f22f80730373f152c4fcd30a588df2c19abeee96a3ae6377d713c9cb75c1"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.1/quiksync_0.5.1_linux_amd64.tar.gz"
      sha256 "b2bd9197a3519ce75ad957b3101f68a3a9781420c0d94ac287c21e08f98a31cb"
    end
  end

  def install
    bin.install "quiksync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quiksync --version")
  end
end
