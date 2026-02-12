class Kaval < Formula
  desc "Guard your ports. A developer-focused port and process manager TUI."
  homepage "https://www.appachi.tech/kaval/"
  version "0.0.5"
  license "MIT"
  url "https://downloads.appachi.tech/macos/archive/kav-macos-v0.0.5.tar.gz"
  sha256 "8e922f13f4067708695d67e4469e0edae4543c5d1090725de167a73c17178939"

  def install
    bin.install "kav"
  end

  test do
    assert_match "kaval", shell_output("#{bin}/kav --version")
  end
end
