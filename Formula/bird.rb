# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.132.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.132.0/bird-darwin-amd64.tar.gz"
      sha256 "0c0c4d9341d9ae8506eb6d13619b0d19914dfa65f27f3627308cbe665eb21749"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.132.0/bird-darwin-arm64.tar.gz"
      sha256 "abc4fd4550b352f47303b0ce1554f1d9245dc6a858f106de02a2e192c38c5235"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.132.0/bird-linux-amd64.tar.gz"
      sha256 "6dc1da84cace0e41e36c4d2257431d577915a0a38c6237742ea65d1030f56d52"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.132.0/bird-linux-arm64.tar.gz"
      sha256 "41207183e100896d050c0ca8ca322fafd2267208b78076a2449abf5820328c66"

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
