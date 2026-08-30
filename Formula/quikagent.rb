class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.10/quikagent_0.1.10_darwin_arm64.tar.gz"
      sha256 "30227177f5b3054f4a49905acd7139f41e5c50fd4388d41b7cf5b5dc8b38ce09"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.10/quikagent_0.1.10_darwin_amd64.tar.gz"
      sha256 "594dc9e7b0a9006a56e25c45d0c1c0d7830031cac3b3aa3daff65a6085224304"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.10/quikagent_0.1.10_linux_arm64.tar.gz"
      sha256 "ed225f1eb8c52e2e92d1a0bf4afc788a5aacfdae26eb1761f79d0bc4cd1d64b2"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.10/quikagent_0.1.10_linux_amd64.tar.gz"
      sha256 "fde2cfca60127c977361e6653cf9f3c3f847b0c7ac700ce44e3b4e5ae4872626"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
