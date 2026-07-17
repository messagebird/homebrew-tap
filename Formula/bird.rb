# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.9/bird-darwin-amd64.tar.gz"
      sha256 "32d48f3850cfeae76029377b09961da4750a9fb296727a4c7055977478b5c1bc"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.9/bird-darwin-arm64.tar.gz"
      sha256 "2e809b9121b16d764b865bf64a13f6c7a9829acb29deefd58cfbadc988f78cf2"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.9/bird-linux-amd64.tar.gz"
      sha256 "d8299d6e10ecec110558e9fb274798bf4fb2740506429c5f82531c3ed81d656e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.9/bird-linux-arm64.tar.gz"
      sha256 "d45aa491db17c9c8c5a0a905bd5ca8ae512493e070d10dd42b4600240b3f0eb5"

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
