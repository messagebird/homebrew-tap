# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.29.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.29.1/bird-darwin-amd64.tar.gz"
      sha256 "18c2d382c43b1ccf90edfdb0a7cc864a8288edc1ff34ee76531d3182fe9a8ea5"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.29.1/bird-darwin-arm64.tar.gz"
      sha256 "cf8e1c7021e24f6e30b4aa207b8624d007dd273e50f524b2b42a309f444b6558"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.29.1/bird-linux-amd64.tar.gz"
      sha256 "658740271eca165416029ef6d2069feafa03021e33eae3f191c7145f6956113d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.29.1/bird-linux-arm64.tar.gz"
      sha256 "d785e6284d6d6beb11d9cb61567de93a2c2c4438cf165565c4938807738f7ada"

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
