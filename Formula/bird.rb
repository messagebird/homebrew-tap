# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.155.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.155.0/bird-darwin-amd64.tar.gz"
      sha256 "4bef44be5588d12e89e26df7610792c03bdc94422710bddaccde16c6dda0e1c2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.155.0/bird-darwin-arm64.tar.gz"
      sha256 "681236157e8350520242c2553a6bf3a9eb7145a8d1fbe646f00d916b22c49c9e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.155.0/bird-linux-amd64.tar.gz"
      sha256 "3b07986605930a3b0f3d3f3cca320c7bd9be3de28146df565e87e5152202a96d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.155.0/bird-linux-arm64.tar.gz"
      sha256 "dc6a05d61182f6d8e599b30d1fe635d3f5380fd679752149350b0eb4791d4aff"

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
