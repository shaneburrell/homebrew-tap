class Quiksync < Formula
  desc "Resilient one-way file copy and sync with FastCDC deltas"
  homepage "https://github.com/shaneburrell/quiksync"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.6/quiksync_0.5.6_darwin_arm64.tar.gz"
      sha256 "1954f104f505be6bc4986932d24be1831590b062a5c8ce315c2c5394f9eb094d"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.6/quiksync_0.5.6_darwin_amd64.tar.gz"
      sha256 "56dd1dee552239281bda361048cd8f5ff8aa535ee89f2ea756030ad728e0b112"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.6/quiksync_0.5.6_linux_arm64.tar.gz"
      sha256 "bbb50d7b3e3ab56fc8ee56da98cc1d15b0456b8cbacffa0e577b6f14aec63254"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.6/quiksync_0.5.6_linux_amd64.tar.gz"
      sha256 "e8fe80aa24e683fc0a8603b9a14b0a6f9d4aa964b472e9f84067743d6171b351"
    end
  end

  def install
    bin.install "quiksync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quiksync --version")
  end
end
