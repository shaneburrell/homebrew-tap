class Modelmove < Formula
  desc "Sparse-delta, verified transfer and migration of LLM model weights"
  homepage "https://github.com/shaneburrell/modelmove"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.2/modelmove_0.1.2_darwin_arm64.tar.gz"
      sha256 "41b5602f40d6a571d53c166226e35abfae9fb6a0b86a8e2fbfc0ff31c03ca405"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.2/modelmove_0.1.2_darwin_amd64.tar.gz"
      sha256 "6df09240d3bda85e72bb888e920ddc7047534edf646d6cbb7d15ceeafd4a33c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.2/modelmove_0.1.2_linux_arm64.tar.gz"
      sha256 "49110cc9faf67afbd8e62e5c05f859441a1a5ad4ecf847faf202b13e9ef4d43e"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.2/modelmove_0.1.2_linux_amd64.tar.gz"
      sha256 "11a49286b56146d5d7c0d8f2198cc8f8baac7c2c4d4297a42bb0b6e3bf6879af"
    end
  end

  def install
    bin.install "modelmove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelmove --version")
  end
end
