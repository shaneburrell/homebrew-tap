class Quiksync < Formula
  desc "Resilient one-way file copy and sync with FastCDC deltas"
  homepage "https://github.com/shaneburrell/quiksync"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.5/quiksync_0.5.5_darwin_arm64.tar.gz"
      sha256 "5051a25121361835943728038f26f5fdfd44eac20ffc0f4566d2b36ad514cf7e"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.5/quiksync_0.5.5_darwin_amd64.tar.gz"
      sha256 "df433ec3912703d7ae190d355775c379bf43284d00dcd477c13a9f170c69d49c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.5/quiksync_0.5.5_linux_arm64.tar.gz"
      sha256 "655a28d5c24c8a3d5cc5fe72c9e94551e492625273b1e0fd667fdcea983b7bc5"
    end
    on_intel do
      url "https://github.com/shaneburrell/quiksync/releases/download/v0.5.5/quiksync_0.5.5_linux_amd64.tar.gz"
      sha256 "b5833bbb6eda4ac8988fbde7bdda3bd33ead46e9ddae86eb4146535ed7b739f4"
    end
  end

  def install
    bin.install "quiksync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quiksync --version")
  end
end
