class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.5/quikagent_0.1.5_darwin_arm64.tar.gz"
      sha256 "23419cb32596cfdde3c13845c2a6d163f47c2eb1deb85549d840d1dcb8936f1f"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.5/quikagent_0.1.5_darwin_amd64.tar.gz"
      sha256 "2aebc314eb17daffa5ad46ae3bd47f11805db9b77b21e42c7f89d04595dfff10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.5/quikagent_0.1.5_linux_arm64.tar.gz"
      sha256 "5c0e53478162c1d470f8d7115426e3ce4a8a704e1ac6478e41b6f94e2df38b60"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.5/quikagent_0.1.5_linux_amd64.tar.gz"
      sha256 "64481868a44b9c9c9b4627c5efd7fe413c4e0e350760942618925c9cfabac1d5"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
