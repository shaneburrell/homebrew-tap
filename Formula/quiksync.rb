class Quiksync < Formula
  desc "Resilient one-way file copy and sync with FastCDC deltas"
  homepage "https://github.com/shaneburrell/quiksync"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.4/quiksync_0.5.4_darwin_arm64.tar.gz"
      sha256 "b2528ea9f90d7183ed70df9a54bfd42513029a0bab9cd3e2793e67217525bf61"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.4/quiksync_0.5.4_darwin_amd64.tar.gz"
      sha256 "59be06a1574ee343445f88922b67d486173d97c97e8451c37888f2d2de3b3c6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.4/quiksync_0.5.4_linux_arm64.tar.gz"
      sha256 "ec3f740d4c04f115cf22e7e8ac03b473d10f40a36d7a7722c1a256afec88f88a"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.4/quiksync_0.5.4_linux_amd64.tar.gz"
      sha256 "ce71c11880bd70b3b617bffd4b38ef27f61b3f40f4d9d576e1001ad28e561b8d"
    end
  end

  def install
    bin.install "quiksync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quiksync --version")
  end
end
