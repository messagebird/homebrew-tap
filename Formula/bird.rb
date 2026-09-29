# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.92.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.92.0/bird-darwin-amd64.tar.gz"
      sha256 "b9bef75442ce4894db3e526108071dbfe8c496744ca41ebb3eef4fb8b8bf3ebc"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.92.0/bird-darwin-arm64.tar.gz"
      sha256 "30927ceb26c67fb13ca56b4aef8eda07a98eb549ce83afb2d909513d9557b1bc"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.92.0/bird-linux-amd64.tar.gz"
      sha256 "96a0c9b0a64c81c20073a52e05084159fb2676ef13b241b274d8d74c6b9caca5"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.92.0/bird-linux-arm64.tar.gz"
      sha256 "935f9ef1367df46adc59a31fce72ab8f2ae608af22a682b8ab47cde204434a36"

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
