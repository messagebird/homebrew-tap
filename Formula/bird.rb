# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.96.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.96.0/bird-darwin-amd64.tar.gz"
      sha256 "4d64d9d6fb0200d935ace6bd94185b002790812e4303a30ea72beb780c5e5ff2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.96.0/bird-darwin-arm64.tar.gz"
      sha256 "466537bd84206abb8cba16c53aedf6716cdf40e51ebb3bd0d5b96060aa7b8a35"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.96.0/bird-linux-amd64.tar.gz"
      sha256 "d860299cf9d7e1843d3ef6dd963f291d66443649fd06c9cc66c787290e81d430"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.96.0/bird-linux-arm64.tar.gz"
      sha256 "6c55043aafbd393243bf1dbc90fb722310308179c1a85bf876b84223d1f25206"

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
