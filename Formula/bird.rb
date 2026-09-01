# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.61.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.61.0/bird-darwin-amd64.tar.gz"
      sha256 "0f8f10e39d84eaf4b2beb9b4880473233fb968e9d98920b23eefe70a81d23b49"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.61.0/bird-darwin-arm64.tar.gz"
      sha256 "598b1c7286a0122765031db39b3f9411421645a1c2666ea296a27522cbd7ac11"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.61.0/bird-linux-amd64.tar.gz"
      sha256 "acd9234d256fb9dc961f75629f0344655bceba97a72f5bc3d04b4098201b805b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.61.0/bird-linux-arm64.tar.gz"
      sha256 "ab7ce6d43cb60d664f8f1e72ef17f3f1611b9c33261e6f61b18c6e31d35d4b79"

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
