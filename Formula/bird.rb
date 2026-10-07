# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.110.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.110.0/bird-darwin-amd64.tar.gz"
      sha256 "a80e7a040978c678a0db7a3413967f0bb7aa52d197bf049e815532b4db0d092e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.110.0/bird-darwin-arm64.tar.gz"
      sha256 "fe104a325f6d1f57fc0cf0ddf00b4011f06d72786378c61c862daf29eea4f92b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.110.0/bird-linux-amd64.tar.gz"
      sha256 "060dc1e0107ecc850d3272cc586922b9055a28e4eb0a7af0e54ac11252eead01"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.110.0/bird-linux-arm64.tar.gz"
      sha256 "b3c18ce5f938e9e86b9c0ac078bf061764bbb1f73f997f0aab7f8cd7f39ec813"

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
