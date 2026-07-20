# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.14/bird-darwin-amd64.tar.gz"
      sha256 "8071bf6340739ff77f369eb64f3f59c32eef904c87160f375cdb4d8f145dc5a5"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.14/bird-darwin-arm64.tar.gz"
      sha256 "67d5e3e7e005ed6f5dcb29bee302d8058e053b1daef3133e48102e292a3c0aca"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.14/bird-linux-amd64.tar.gz"
      sha256 "295c97aa7753457e4db6baf77c46d8b35f7cdf2ba1a22a4c83a86cf88fe7d43d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.14/bird-linux-arm64.tar.gz"
      sha256 "bd6635def8c31a1f20d54caff80c4e899ce3a5ff212202e77de6964a28db0fd1"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  def caveats
    <<~EOS
      Authenticate before use:
        bird auth login
    EOS
  end

  test do
    system "#{bin}/bird", "--version"
  end
end
