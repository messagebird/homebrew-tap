# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.44.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.44.0/bird-darwin-amd64.tar.gz"
      sha256 "ba3214b4cf28d6453489365191b97d2cab3da8cc74ba64978de9873f9564dbc8"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.44.0/bird-darwin-arm64.tar.gz"
      sha256 "eda3873c1edaecb4aba272760598687514190662f9dc94bc165d7162602a40bb"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.44.0/bird-linux-amd64.tar.gz"
      sha256 "c4570aeb737d0498750e361c2530d5c1dad19477c005944376aef8db76d584cb"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.44.0/bird-linux-arm64.tar.gz"
      sha256 "8ed58b4a2f089d6f0a5eb49e226a17dfccd41590efefda51754fad0bf827efc1"

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
