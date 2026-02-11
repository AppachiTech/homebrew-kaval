class Kaval < Formula
  desc "Guard your ports. A developer-focused port and process manager TUI."
  homepage "https://www.appachi.tech/kaval/"
  version "0.0.3"
  license "MIT"
  url "https://downloads.appachi.tech/macos/archive/kav-macos-v0.0.3.tar.gz"
  sha256 "3c1751c230c2e8b025942079819ad7f7c2d3b4d8e1745f000d15fbf2d0ea9807"

  def install
    bin.install "kav"
  end

  test do
    assert_match "kaval", shell_output("#{bin}/kav --version")
  end
end
