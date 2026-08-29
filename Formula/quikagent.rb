class Quikagent < Formula
  desc "Minimal terminal coding agent"
  homepage "https://github.com/shaneburrell/quikagent"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.8/quikagent_0.1.8_darwin_arm64.tar.gz"
      sha256 "c5edffc79df4901af8b2d563449d3dd1a6dda7e4eb2676d4f3946cb5f5320757"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.8/quikagent_0.1.8_darwin_amd64.tar.gz"
      sha256 "6126df4b14f93ba7154aee15c00a6b3790930a7a73563af82bc3a926dae176e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.8/quikagent_0.1.8_linux_arm64.tar.gz"
      sha256 "3b3e59a1cbcd3d7a0e255b953140dfcdf282960fbf6a42f6028ac693359908d4"
    end
    on_intel do
      url "https://github.com/shaneburrell/quikagent/releases/download/v0.1.8/quikagent_0.1.8_linux_amd64.tar.gz"
      sha256 "6da9d9b2b3643ff6f2da905b66df6caa643093eed16a3eea97a5c888928e7186"
    end
  end

  def install
    bin.install "quikagent"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quikagent -version")
  end
end
