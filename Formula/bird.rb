# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.187.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.187.0/bird-darwin-amd64.tar.gz"
      sha256 "334516319972a719435e13ad8d10b13a42ad76697b534bfc55ed5deaba8936f3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.187.0/bird-darwin-arm64.tar.gz"
      sha256 "f6a1393eb47ee39d03d0f0a1bf48a4f0ab7b24dd9c8a6dd6201957066295b2bc"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.187.0/bird-linux-amd64.tar.gz"
      sha256 "6f4724067d52584ff8cc37f9b3724ebe4499d97a7c60d994e8975c509359f316"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.187.0/bird-linux-arm64.tar.gz"
      sha256 "80826ec41dd23cdf017a8ea740529d9a962acbddcd631ec9a6de37a63caed578"

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
