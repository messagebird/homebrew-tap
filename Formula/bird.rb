# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.157.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.157.0/bird-darwin-amd64.tar.gz"
      sha256 "971ec8007f674ffc74bfd97793dac76678840144b37547fae073946935aef518"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.157.0/bird-darwin-arm64.tar.gz"
      sha256 "951fb16d49fba1e6bda84a32bb2e12553479c478b64ff1bcb026ab78bd9c7a69"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.157.0/bird-linux-amd64.tar.gz"
      sha256 "f057bb60aeec14b6814cd95a6cc6254380c3ddbcce1b46edf7a2d98b2f4400d3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.157.0/bird-linux-arm64.tar.gz"
      sha256 "e2530c2f9feb64679c713265546f722e4210f83d4322d589a1620258e00b5b79"

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
