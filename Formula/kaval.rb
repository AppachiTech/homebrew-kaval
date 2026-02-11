class Kaval < Formula
  desc "Guard your ports. A developer-focused port and process manager TUI."
  homepage "https://www.appachi.tech/kaval/"
  version "0.0.4"
  license "MIT"
  url "https://downloads.appachi.tech/macos/archive/kav-macos-v0.0.4.tar.gz"
  sha256 "05830901dbdd6eb07b9bb6cd4b62ad523e7cfde85cda56910b011b3550baedc9"

  def install
    bin.install "kav"
  end

  test do
    assert_match "kaval", shell_output("#{bin}/kav --version")
  end
end
