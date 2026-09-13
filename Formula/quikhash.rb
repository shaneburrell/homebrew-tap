class Quikhash < Formula
  desc "FastCDC + BLAKE3 content-addressed hasher with reconstruction"
  homepage "https://github.com/shaneburrell/quikhash"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.5/quikhash_0.1.5_darwin_arm64.tar.gz"
      sha256 "b6b41d9f4cb4404f128d6835689ba4296b71f62b53bf88ffbaecd0e695f14cfb"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.5/quikhash_0.1.5_darwin_amd64.tar.gz"
      sha256 "64f49c11b66e58f7b8afd65ef1724a30f7ae71cf5e438fe17873ac185ef76d8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.5/quikhash_0.1.5_linux_arm64.tar.gz"
      sha256 "9f6c7f075e44dcaf5ca6b1ccd9c2f68d27a18c1e4141091980118d1e4a3d5609"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.5/quikhash_0.1.5_linux_amd64.tar.gz"
      sha256 "c292dc125531ed1d8b0e9cb8f0ebe1513770f47699c92053c62cc171e66c1fef"
    end
  end

  def install
    bin.install "quikhash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikhash --version")
  end
end
