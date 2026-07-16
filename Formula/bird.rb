# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.8.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.8.10/bird-darwin-amd64.tar.gz"
      sha256 "56e849992feed2b3ca613ae6fd160bee83d3942ac916b30674b517aa6a3ac978"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.8.10/bird-darwin-arm64.tar.gz"
      sha256 "e51864e000c83e846fe12f87cd2e0544cc1cfa3f7d776b79006f5a992d0ebad1"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.10/bird-linux-amd64.tar.gz"
      sha256 "4c71b415b1bde58d928952c539c5eb8248696a280c5210ce8c8994d931428bd6"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.10/bird-linux-arm64.tar.gz"
      sha256 "e79b28d3aba043593e239d9200dcea0fd6116ae0f3fabbbcee3f0c2587204121"

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
