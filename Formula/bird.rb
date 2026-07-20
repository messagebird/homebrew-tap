# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.13/bird-darwin-amd64.tar.gz"
      sha256 "d269e5ae562af74a5b418df37ff04ae5bf3bd13dc8b931acc00bc2e18e88976a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.13/bird-darwin-arm64.tar.gz"
      sha256 "d44ae9cad94634edaca604fcca75dd41112a351c77769184f0eb91e56acc1c20"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.13/bird-linux-amd64.tar.gz"
      sha256 "0a64531983b8e112192ecdf6a06131f257027da77c424f2e21877039ee88c4d0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.13/bird-linux-arm64.tar.gz"
      sha256 "e6abef7636385c4611c68c7cc18fd8a6ede260e1ca1ec75554e4698982ea711e"

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
