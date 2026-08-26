# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.43.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.43.0/bird-darwin-amd64.tar.gz"
      sha256 "dd0bd726ff390a2705973b51efea8931706ac49bc7543e39e7e7391cbf6d4169"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.43.0/bird-darwin-arm64.tar.gz"
      sha256 "c61a4c283d49e738b294acd84713181bf4ff1828b21afaee939c8ff2412b4b39"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.43.0/bird-linux-amd64.tar.gz"
      sha256 "c2a0fb1773616c4532298ffe126e7753a367f166f24a5622b3f35d258e1d0f18"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.43.0/bird-linux-arm64.tar.gz"
      sha256 "4937608b58c8be7535cfb5f7222b8f820483b1594e4a7357e920f11b54e30b7e"

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
