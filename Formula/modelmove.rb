class Modelmove < Formula
  desc "Sparse-delta, verified transfer and migration of LLM model weights"
  homepage "https://github.com/shaneburrell/modelmove"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.7/modelmove_0.1.7_darwin_arm64.tar.gz"
      sha256 "4942ec34272bf2c2acbe97c37e038e8150810874aefe5c505e125bae30b61a84"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.7/modelmove_0.1.7_darwin_amd64.tar.gz"
      sha256 "bba36bde86e44e9483b0a5395d07dfdc865a5a96d45cdbb3f71be43e35e434bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.7/modelmove_0.1.7_linux_arm64.tar.gz"
      sha256 "a5c8b91b02a2680aac2a946e9a005fa29c08b9410f68c8d9add01396b446a0fb"
    end
    on_intel do
      url "https://github.com/shaneburrell/modelmove/releases/download/v0.1.7/modelmove_0.1.7_linux_amd64.tar.gz"
      sha256 "937b004a8b1161b4f3c0e6a05e97adea73693919a414b8fdcf2355b92b1a21d1"
    end
  end

  def install
    bin.install "modelmove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/modelmove --version")
  end
end
