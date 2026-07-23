# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.12.0/bird-darwin-amd64.tar.gz"
      sha256 "9e5c6ed68cf322f67d2846f2047dbc9bc7cd7186b1f0ebdd4b3b984bde9f1c5e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.12.0/bird-darwin-arm64.tar.gz"
      sha256 "4740132f4b9bb31978e285bd1e94d81dd1be8229b2306ec30b18ac4174520fa3"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.12.0/bird-linux-amd64.tar.gz"
      sha256 "f1ee4ceea4112a492fdc15b185c55881b911380fbcd72346842c68a9aedc19aa"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.12.0/bird-linux-arm64.tar.gz"
      sha256 "469ce5416244b38fb3721cff3cda96705a1aeb8c5b5de43648d458eed6adb2f7"

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
