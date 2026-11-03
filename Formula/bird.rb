# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.152.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.152.0/bird-darwin-amd64.tar.gz"
      sha256 "7be35299843eed3ce20241f6542455f23108c976c09a52e7b433fe90fab793eb"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.152.0/bird-darwin-arm64.tar.gz"
      sha256 "e3032958107577680c46e6c729ec838a990857b5c819170dad32a97829cc4681"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.152.0/bird-linux-amd64.tar.gz"
      sha256 "ca15cb6c5c40f8619e44db4958f368363acc165339e57e651c2c422b8e03f3af"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.152.0/bird-linux-arm64.tar.gz"
      sha256 "74a02a3eec0592c78778b02ba0d55615eada910d3c933319597f4cdd41987c74"

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
