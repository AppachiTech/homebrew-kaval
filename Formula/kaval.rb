class Kaval < Formula
  desc "Guard your ports. A developer-focused port and process manager TUI."
  homepage "https://www.appachi.tech/kaval/"
  version "0.1.0"
  license "MIT"
  url "https://downloads.appachi.tech/macos/archive/kav-macos-v0.1.0.tar.gz"
  sha256 "a9ae855ffae4e6d9e2bc2a35ebd0fb63ab45c482843d03dd8e2f60c215cd228d"

  def install
    bin.install "kav"
  end

  test do
    assert_match "kaval", shell_output("#{bin}/kav --version")
  end
end
