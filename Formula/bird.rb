# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.125.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.125.0/bird-darwin-amd64.tar.gz"
      sha256 "b8b319b68e1ff2d992715d763c86abbbb2b20d8f08f723069587a64c624f94d7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.125.0/bird-darwin-arm64.tar.gz"
      sha256 "b3bb58944513d468d5958caac51684e0ad5522ffc55ef93331565bbacf717906"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.125.0/bird-linux-amd64.tar.gz"
      sha256 "ef6f3571d7c0b3fa710b06e13b6121acc6207f8cce709a457c99d3f811d05463"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.125.0/bird-linux-arm64.tar.gz"
      sha256 "89b0a2e195a000adf054471dce8f5df244bb6289b8f5ce8932bb6473e7dda982"

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
