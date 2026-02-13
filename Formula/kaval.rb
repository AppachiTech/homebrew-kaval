class Kaval < Formula
  desc "Guard your ports. A developer-focused port and process manager TUI."
  homepage "https://www.appachi.tech/kaval/"
  version "0.0.6"
  license "MIT"
  url "https://downloads.appachi.tech/macos/archive/kav-macos-v0.0.6.tar.gz"
  sha256 "f72a349e645e4b7255eec08d3a8a609986e56659abda0957fd46b316d6ba179c"

  def install
    bin.install "kav"
  end

  test do
    assert_match "kaval", shell_output("#{bin}/kav --version")
  end
end
