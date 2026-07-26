class Modelmove < Formula
  desc "Sparse-delta, verified transfer and migration of LLM model weights"
  homepage "https://github.com/shaneburrell/modelmove"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.1/modelmove_0.1.1_darwin_arm64.tar.gz"
      sha256 "a737f41895f430e39dd8dcbdb6e3c0d95094c4f3a3bbf2f101daf45142480ef4"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.1/modelmove_0.1.1_darwin_amd64.tar.gz"
      sha256 "ea9e065e0c73c7342edea26cdf1d7800b7aee75a3739498e6bac860d065de3b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.1/modelmove_0.1.1_linux_arm64.tar.gz"
      sha256 "1864ce6b1fb0adce5420191ed6e418ff6bda652bdea0996bc1473dc7e96f7a30"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.1/modelmove_0.1.1_linux_amd64.tar.gz"
      sha256 "9b69a858bec2502d2aa982c32bd38af67ea6bf17c65b2dcbdac48a9e932f58f8"
    end
  end

  def install
    bin.install "modelmove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelmove --version")
  end
end
