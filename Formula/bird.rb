# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.184.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.184.0/bird-darwin-amd64.tar.gz"
      sha256 "2c5ccdee3a4cb3c8f30a9172677c3844f13e92ae56401c1af141840383ca5a42"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.184.0/bird-darwin-arm64.tar.gz"
      sha256 "8812cdba941f5aa408cb53d8aad684dc3f5f550aeebe1d2ab657342e878f2fa0"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.184.0/bird-linux-amd64.tar.gz"
      sha256 "b6736c088e45b99e1b692945bf047ebb3f9ce688d306e9057e743e2a0a952c92"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.184.0/bird-linux-arm64.tar.gz"
      sha256 "c59965b321a82ba016619cd27fb378605dd2971f1f53bfd48eb4bf9dfbcb07b8"

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
