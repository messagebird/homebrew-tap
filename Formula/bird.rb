# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.14.1/bird-darwin-amd64.tar.gz"
      sha256 "a15c5581264f0b75ebb21c79a2742094c824d4acb50ed8c2df76c629c2789c60"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.14.1/bird-darwin-arm64.tar.gz"
      sha256 "1d7ace758b6140d7fa6332ee24296829e6befce150042bd97a7aeba185db2456"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.14.1/bird-linux-amd64.tar.gz"
      sha256 "53a30d071ca2725e0f306cff045084a2e9e0f1a1e2520c54c9fec1419558fea3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.14.1/bird-linux-arm64.tar.gz"
      sha256 "1ca95d3d88757d06e4b8ff42228bd8929097da94289930794d016e6fed5fbc06"

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
