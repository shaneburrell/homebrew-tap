class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.11/quikagent_0.1.11_darwin_arm64.tar.gz"
      sha256 "dadbe7a4467583361ef838cd4f92ae5b3663ad267849338b179bb4ddc0b55ae6"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.11/quikagent_0.1.11_darwin_amd64.tar.gz"
      sha256 "aebe764408b1db88876b0aeeb2fc1d723acdc8141a829037685a8b2eb4415b51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.11/quikagent_0.1.11_linux_arm64.tar.gz"
      sha256 "a1af842fed293582da85a22b63e676dd726c7ea9090d4f2a7b1376a7ba710b09"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.11/quikagent_0.1.11_linux_amd64.tar.gz"
      sha256 "71b873cbdd975b42f919b0cd0a1f63509ee80e6f1631cc38ee7792be5b7d8605"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
