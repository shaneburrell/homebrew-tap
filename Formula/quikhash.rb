class Quikhash < Formula
  desc "FastCDC + BLAKE3 content-addressed hasher with reconstruction"
  homepage "https://github.com/shaneburrell/quikhash"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.3/quikhash_0.1.3_darwin_arm64.tar.gz"
      sha256 "2383c3627d4dc6ee3a3a71b3e29f07c8a30773d0ce1a19606da54970496b3cde"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.3/quikhash_0.1.3_darwin_amd64.tar.gz"
      sha256 "9cf57d50e698a0a75d159c9487909bc9b3e99eb341e4eefe8e5dd1beaf014265"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.3/quikhash_0.1.3_linux_arm64.tar.gz"
      sha256 "77ff6f69323ae37e766464ba0eb7bf3d12340a6fff9e27f18156e52d8efa82d9"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikhash/releases/download/v0.1.3/quikhash_0.1.3_linux_amd64.tar.gz"
      sha256 "70e95671f555d91f2dea4c3347c997cdaf71503a00f83088f7031ec85938d710"
    end
  end

  def install
    bin.install "quikhash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikhash --version")
  end
end
