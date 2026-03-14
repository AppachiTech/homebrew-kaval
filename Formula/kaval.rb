class Kaval < Formula
  desc "Guard your ports. A developer-focused port and process manager TUI."
  homepage "https://www.appachi.tech/kaval/"
  version "0.1.0"
  license "MIT"
  url "https://downloads.appachi.tech/macos/archive/kav-macos-v0.1.0.tar.gz"
  sha256 "e45a5fea268e7594bab90c0899e7cf9e81eb29053be2988e425391be19c88323"

  def install
    bin.install "kav"
  end

  test do
    assert_match "kaval", shell_output("#{bin}/kav --version")
  end
end
