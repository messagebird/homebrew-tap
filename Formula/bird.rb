# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.144.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.144.0/bird-darwin-amd64.tar.gz"
      sha256 "48f29f54975afd19628cb9557c2b26d525fb5dcd6de0b785d950219dbb0cd500"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.144.0/bird-darwin-arm64.tar.gz"
      sha256 "fe34a549505e2094bb162f92301946edf94ea46cf2b7a68b6c63260e0d1c69cf"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.144.0/bird-linux-amd64.tar.gz"
      sha256 "2b8d44a8ce8f9aedda77548eaadada5c8b85275b2326e2244bc422da79829d52"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.144.0/bird-linux-arm64.tar.gz"
      sha256 "63aa9a69f09b2898b1e6a75e0aec6312f05e5a7f8f1d942e162e31adda064772"

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
