# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.167.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.167.0/bird-darwin-amd64.tar.gz"
      sha256 "d5c6a6af7d0f9de41347e5b97dd4b6d7f9c824a2b95efa5c05d0c9311b544dd4"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.167.0/bird-darwin-arm64.tar.gz"
      sha256 "f44877e96b1c7052b1c0b6759e79f0eaa3079ce7e8eaa2bd3b11bdb416bbd1bb"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.167.0/bird-linux-amd64.tar.gz"
      sha256 "fb363c0848747d0a5040e9821c9228c456879ea564c250138e619e6d933c3b3e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.167.0/bird-linux-arm64.tar.gz"
      sha256 "545e31e94977e0968567248c86ff5a1d6293daa6b90b58fc2c6665f474dc12eb"

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
