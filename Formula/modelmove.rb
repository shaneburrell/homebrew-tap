class Modelmove < Formula
  desc "Sparse-delta, verified transfer and migration of LLM model weights"
  homepage "https://github.com/shaneburrell/modelmove"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.8/modelmove_0.1.8_darwin_arm64.tar.gz"
      sha256 "64455776677dc7ca11caf1f3225463c8e21b1718ee8741ebb292d3bba1e97a1c"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.8/modelmove_0.1.8_darwin_amd64.tar.gz"
      sha256 "b34fd5f759a8945bc696e136b31a3742085ed49b1cb7c49ab63b23e3286de967"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.8/modelmove_0.1.8_linux_arm64.tar.gz"
      sha256 "b58eaeca0ad82732b04daa0040ce5c59c97c5bdc6840e2702f7a686007e52d53"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.8/modelmove_0.1.8_linux_amd64.tar.gz"
      sha256 "f79a700aee027fb17fcf0d034232edd5b90f539b94192e04ddbd131d6711e812"
    end
  end

  def install
    bin.install "modelmove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelmove --version")
  end
end
