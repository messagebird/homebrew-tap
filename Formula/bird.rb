# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.26.0/bird-darwin-amd64.tar.gz"
      sha256 "9498fcded220d9ad74185c32472fdf78e540589cb462976d433803414108012d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.26.0/bird-darwin-arm64.tar.gz"
      sha256 "7f059fe0945ccf464934b3960ab344daa64d2526a1df969360c288572d6e3f2e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.26.0/bird-linux-amd64.tar.gz"
      sha256 "c86204a5b73563bfe639717562d161c5551e292fc1364c9cc08a2b3980b523a4"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.26.0/bird-linux-arm64.tar.gz"
      sha256 "4e3659e4ec581cc4ff325398169f5b3a14fe106e2a05ac76eb358e137d8437ca"

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
