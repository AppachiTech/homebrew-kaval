class Kaval < Formula
  desc "Guard your ports. A developer-focused port and process manager TUI."
  homepage "https://www.appachi.tech/kaval/"
  version "0.0.1"
  license "MIT"
  url "https://downloads.appachi.tech/macos/archive/kav-macos-v0.0.1.tar.gz"
  sha256 "PLACEHOLDER"

  def install
    bin.install "kav"
  end

  test do
    assert_match "kaval", shell_output("#{bin}/kav --version")
  end
end
