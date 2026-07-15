# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.8.1/bird-darwin-amd64.tar.gz"
      sha256 "03822c1525ead25b52f8b81c58fee9de2af392bdadb462ddf54998410a1eef02"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.8.1/bird-darwin-arm64.tar.gz"
      sha256 "18f9c66cb8c94177448ecad7aad9dbb1a5d3e097bdd646a37641bfb13beeefd0"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.1/bird-linux-amd64.tar.gz"
      sha256 "e879fff0c462d750d038359fbd8a1860772a544e27f000600904a957876c8335"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.1/bird-linux-arm64.tar.gz"
      sha256 "d43cc6c19df0d93eeb1923b35782caa435a7af05d10c707bbca828b5368b8bfa"

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
