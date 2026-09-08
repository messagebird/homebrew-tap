# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.72.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.72.0/bird-darwin-amd64.tar.gz"
      sha256 "178fe4213910f94d90ba46c22141d77f1575521da659dabb33566401a8e32cf8"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.72.0/bird-darwin-arm64.tar.gz"
      sha256 "f1a8525492a651a508803e011a20f3daa9d6f729ef449165c30ef1d10873502a"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.72.0/bird-linux-amd64.tar.gz"
      sha256 "3271d13725b5f93767b9c093b7490cd4fc257265e4a909a6c7dcbcde16f524bf"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.72.0/bird-linux-arm64.tar.gz"
      sha256 "c698971a863a28614b74673b09f6e5ae4f14fbfb082ca70abc5a0edb01fa3789"

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
