class Quikhash < Formula
  desc "FastCDC + BLAKE3 content-addressed hasher with reconstruction"
  homepage "https://github.com/shaneburrell/quikhash"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.2/quikhash_0.1.2_darwin_arm64.tar.gz"
      sha256 "39a8010a45324ef38cf76ecf0cd2001a84f52c7903f64469f3f6cad8ed0c20ce"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.2/quikhash_0.1.2_darwin_amd64.tar.gz"
      sha256 "c2cbbc9d092584e143bb14e53b713163c44786556c9e228d14718a20296bfd17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.2/quikhash_0.1.2_linux_arm64.tar.gz"
      sha256 "bc3c26a4d7097b6408c7fbe4594ce311bd10d16a57e71a08b415ae17d3ea4c9c"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.2/quikhash_0.1.2_linux_amd64.tar.gz"
      sha256 "e7e97a093eb1bf0a0303e58439afb20919dcb5f7d585fed3251051c73ff93b2b"
    end
  end

  def install
    bin.install "quikhash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikhash --version")
  end
end
