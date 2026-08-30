class Modelmove < Formula
  desc "Sparse-delta, verified transfer and migration of LLM model weights"
  homepage "https://github.com/shaneburrell/modelmove"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.4/modelmove_0.1.4_darwin_arm64.tar.gz"
      sha256 "be3fb3d2f43a9e3c7b111776770658ab8d8022bcf1d5af1267425a69b1a72c11"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.4/modelmove_0.1.4_darwin_amd64.tar.gz"
      sha256 "efa8e47ed0a2ffb7a974cc19c1e5cc8d452ea79ae0c2e661adf0ee98163a1910"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.4/modelmove_0.1.4_linux_arm64.tar.gz"
      sha256 "f8b5d1423a3d4706592094e7a9c596838c8d27300f705a9c8a9196258537ef05"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.4/modelmove_0.1.4_linux_amd64.tar.gz"
      sha256 "ddfb7e15345d5326272efd602cfc67ef2fdf5690fa8e9bb16929d7ba980b9fb2"
    end
  end

  def install
    bin.install "modelmove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelmove --version")
  end
end
