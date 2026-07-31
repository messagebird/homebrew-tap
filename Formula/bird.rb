# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.16.0/bird-darwin-amd64.tar.gz"
      sha256 "d0bfb7363979c88d3560987000ba89ceb5226ab8fe92a5899f01ba1372d24a2c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.16.0/bird-darwin-arm64.tar.gz"
      sha256 "412b3070c3757cc6a38c5f9764a489e6d17c4766a11c9bd790771bc66a5ae937"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.16.0/bird-linux-amd64.tar.gz"
      sha256 "6cc348c8d30112f094295169b78627c040f668db49ebf1c552c09cdc7585494d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.16.0/bird-linux-arm64.tar.gz"
      sha256 "b96fd614b51d9a0d56ac59cf4d7c59b074f991c7bd008d18b110e41ecd0423e3"

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
