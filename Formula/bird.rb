# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.84.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.84.0/bird-darwin-amd64.tar.gz"
      sha256 "4a15c88638e1ce2a758218449f6a94402ff405b11be8375a464811a1e0f23515"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.84.0/bird-darwin-arm64.tar.gz"
      sha256 "a7f5365f6210ffe21ea881c0e73eb98134ddc555398a903fb998b00477a0eaaa"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.84.0/bird-linux-amd64.tar.gz"
      sha256 "94f4f0af3206c26d9bbc8f2ee9f04853382a4f7ad713da96eed462a767c9dc6a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.84.0/bird-linux-arm64.tar.gz"
      sha256 "eb1ffd38d3b3f3a1ebde877cd7be2defbc91210e80a2e40930a34c9d3cd7eb40"

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
