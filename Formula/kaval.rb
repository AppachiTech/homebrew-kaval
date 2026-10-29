class Kaval < Formula
  desc "Guard your ports: a developer-focused port and process manager TUI"
  homepage "https://www.appachi.tech/kaval/"
  version "0.2.0"
  license "MIT"

  on_macos do
    # One universal binary for Apple Silicon and Intel.
    url "https://downloads.appachi.tech/macos/archive/kav-macos-v0.2.0.tar.gz"
    sha256 "1039604a96c20ed67bc4f812645c3cce1dd1f1d8df0bf647077bc501aee8d9db"
  end

  on_linux do
    on_intel do
      url "https://downloads.appachi.tech/linux/archive/kav-linux-v0.2.0.tar.gz"
      sha256 "ac1c34529e2cbb7de1ed4f6017fd6f28256225a53b78870f3f606acf4e232d15"
    end
    on_arm do
      url "https://downloads.appachi.tech/linux-arm64/archive/kav-linux-arm64-v0.2.0.tar.gz"
      sha256 "c4cf59b5fb2c286f9987bf01c4ee723a85b13678cd016e5a73336b1fc3196ec5"
    end
  end

  def install
    bin.install "kav"
    man1.install "kav.1"
    generate_completions_from_executable(bin/"kav", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kav --version")
  end
end
