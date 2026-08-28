# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.54.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.54.0/bird-darwin-amd64.tar.gz"
      sha256 "b19341bf37fa1264c7775bdf54315b68d6d751f955f60000ff05dd932ebe7783"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.54.0/bird-darwin-arm64.tar.gz"
      sha256 "c275939cfa705fb0b1a0eee96f3c80a5007c474e853de816d06433a581cd84ca"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.54.0/bird-linux-amd64.tar.gz"
      sha256 "bff206bdd41ea48b43fdfcaa6d56adc3fdb259843f6161da2c10beb3972178ca"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.54.0/bird-linux-arm64.tar.gz"
      sha256 "3040b32532b7e73769f16f0c9ab69621b52c1d2cbd171374e3efae4b9dad149e"

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
