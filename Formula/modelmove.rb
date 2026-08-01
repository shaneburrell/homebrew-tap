class Modelmove < Formula
  desc "Sparse-delta, verified transfer and migration of LLM model weights"
  homepage "https://github.com/shaneburrell/modelmove"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.3/modelmove_0.1.3_darwin_arm64.tar.gz"
      sha256 "fb03fe1a8cb74092f14f8b2c617fd3c4e122960751cb5a5b1ad723e875922556"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.3/modelmove_0.1.3_darwin_amd64.tar.gz"
      sha256 "40b9f290b0e0d05ae64a45bb64d3a6f1020256ff00acb61b597570cfdf3cc8e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.3/modelmove_0.1.3_linux_arm64.tar.gz"
      sha256 "439dcf8c43f786a2d3515d922236748905a62c24b7887260f576dd71688baed9"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.3/modelmove_0.1.3_linux_amd64.tar.gz"
      sha256 "df2ac05ef0f8634bcb59c90f936314e29dffeee597b4076db587c7fba05b5210"
    end
  end

  def install
    bin.install "modelmove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelmove --version")
  end
end
