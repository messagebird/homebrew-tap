# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.104.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.104.0/bird-darwin-amd64.tar.gz"
      sha256 "fae49ac5551416d8303c15c91538e8e2cba4fe87eb9081610f0068f9096a29fb"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.104.0/bird-darwin-arm64.tar.gz"
      sha256 "91632c9f5e5a1d906d817a6d030dbb4e896690fc3f940523bb7ac41835e071e6"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.104.0/bird-linux-amd64.tar.gz"
      sha256 "af7ed2a1592e8f167fe910b42da380a4dcdfe15ce71302fc738b97d0c0489844"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.104.0/bird-linux-arm64.tar.gz"
      sha256 "088d7226fc029fdf8f21432bd03d565d913221c01f88c60de8b538c8b2018620"

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
