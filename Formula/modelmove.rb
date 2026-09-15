class Modelmove < Formula
  desc "Sparse-delta, verified transfer and migration of LLM model weights"
  homepage "https://github.com/shaneburrell/modelmove"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.9/modelmove_0.1.9_darwin_arm64.tar.gz"
      sha256 "5711e1a5a24a50ece0ce8888736cc6e152daeb910123b5ca8ec88204904657ab"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.9/modelmove_0.1.9_darwin_amd64.tar.gz"
      sha256 "92dd0b84f05c63bc6691ff6e9497bc45c535a89567a0e4da89d26abe803370e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.9/modelmove_0.1.9_linux_arm64.tar.gz"
      sha256 "484c7f61afddc03453fd80644c6f06919826223f02f95655f42a66930942d9bf"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.9/modelmove_0.1.9_linux_amd64.tar.gz"
      sha256 "13500663683c621ae7c04506076e42975168065d565901e3d1f08a7716008aed"
    end
  end

  def install
    bin.install "modelmove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelmove --version")
  end
end
