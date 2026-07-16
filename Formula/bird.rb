# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.1/bird-darwin-amd64.tar.gz"
      sha256 "1c880170f62bcbdecb76d7c0c22c5c29775a808225ccde5a692a0a5b9b3956e5"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.1/bird-darwin-arm64.tar.gz"
      sha256 "4e1f5d4c3ee52282c0984557854cd58b13e35df46d87e94e95d897df28572b7e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.1/bird-linux-amd64.tar.gz"
      sha256 "be00675d5e3bf603b6eeb74cede2190a1eda6f0aa9058891111240d84a1c512a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.1/bird-linux-arm64.tar.gz"
      sha256 "f996d9dc2039c849deddbc321d1577ec85fdaf3369912228c6b3ec558ac835fa"

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
