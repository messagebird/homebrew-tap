# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.153.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.153.1/bird-darwin-amd64.tar.gz"
      sha256 "1b86b37d9e22fb2c46f2cc2f34df2062f5fa94acf0b60b98e1e3633cf6f1ce81"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.153.1/bird-darwin-arm64.tar.gz"
      sha256 "891dcc5ff0ced7d9d6deafeaadea9eb5909ee14136c68460fcced53861f44039"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.153.1/bird-linux-amd64.tar.gz"
      sha256 "68e1edd3ba6b394037e8826d83716e14b3b7eebbe871924d78cdf28850194d97"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.153.1/bird-linux-arm64.tar.gz"
      sha256 "65331637534661cb99b28d4fc911e93a223162e8539a234c5732bd12a2bdb38e"

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
