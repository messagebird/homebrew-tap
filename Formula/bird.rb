# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.13.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.13.4/bird-darwin-amd64.tar.gz"
      sha256 "e57223936229f2dc694d35869c73a8a60810167a4d3a4a2881ee86370c15375b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.13.4/bird-darwin-arm64.tar.gz"
      sha256 "8b19e00c92b016a5c10b97023087019c75e8eb7141c2ead3846dcfc2b2d9b63c"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.13.4/bird-linux-amd64.tar.gz"
      sha256 "b4a00e25d118d83f87c214a698d69949551370bd8d6672fa65e6066585c623f3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.13.4/bird-linux-arm64.tar.gz"
      sha256 "875a8c9c85fe5f9b91733b58afbd4a0eb75c25af3278be236f287a933ad561bd"

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
