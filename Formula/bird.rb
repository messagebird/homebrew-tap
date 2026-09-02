# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.63.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.63.0/bird-darwin-amd64.tar.gz"
      sha256 "d6d25e4fe74fcf6ded3590e536244f29a369d14ecf0203fd783e9e58f6673a56"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.63.0/bird-darwin-arm64.tar.gz"
      sha256 "76c37db0ac95d9ad0d79f724bff8611bedfb86ba1bbc0789695e11222b4d298a"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.63.0/bird-linux-amd64.tar.gz"
      sha256 "65863dcb0167bdee9ac661d620559e06cd83a1d6578234f0162e48c0d065adb7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.63.0/bird-linux-arm64.tar.gz"
      sha256 "8b5945d11c5d955c1bbb0a6fbb7e6a51333c345eeccd2c800bea62e04696ad22"

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
