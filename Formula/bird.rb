# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.94.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.94.0/bird-darwin-amd64.tar.gz"
      sha256 "48c4107f06b5b6fcef71c989ca845b35d9be7077219157d4d52f2593ad53abda"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.94.0/bird-darwin-arm64.tar.gz"
      sha256 "f128ad720dbd37a5db0966cd454a824b1bf1bfd3916989f259a244f115807fb1"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.94.0/bird-linux-amd64.tar.gz"
      sha256 "684105352e16863f060cffdf5ce87cb8d18d899cbeb1de55f52d3ebef5f4421e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.94.0/bird-linux-arm64.tar.gz"
      sha256 "893f288a98a7cdebb7b789a1faf43bc9296c4034ac6f8b3f7a51480030c0fbf7"

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
