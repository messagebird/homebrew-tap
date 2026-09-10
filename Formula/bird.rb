# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.76.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.76.0/bird-darwin-amd64.tar.gz"
      sha256 "0550b53978b0c58f46c0a4532f819f6389f8d0c844cec5087d46ffa7d00c83a7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.76.0/bird-darwin-arm64.tar.gz"
      sha256 "00c09b8e8c17c2a78f1eeb450127f8c537c0f9fc2ba3fc9764e8742eb5af2a9e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.76.0/bird-linux-amd64.tar.gz"
      sha256 "b1c5cf22100ab5b353a72eaa0cb9210d61726b79d9e852aa3a7b49c18b7a2951"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.76.0/bird-linux-arm64.tar.gz"
      sha256 "0d386295e2277b1059c2a5113a90041ed0e689e19c16e53616aeb0b7f0614a75"

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
