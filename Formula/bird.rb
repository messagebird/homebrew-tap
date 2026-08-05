# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.19.0/bird-darwin-amd64.tar.gz"
      sha256 "017c53b0e4cf40638f9247730a1a726198780dec31e283142a6be9390948aba0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.19.0/bird-darwin-arm64.tar.gz"
      sha256 "4fcb367086a6b39715f9fe9999d85d606237be5e26cb40ce973540a9f83f11ea"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.19.0/bird-linux-amd64.tar.gz"
      sha256 "787bd74d0f66c8846d0bc5e553b3cf52ea4ad396ae9602379062ac0a2852bddf"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.19.0/bird-linux-arm64.tar.gz"
      sha256 "86baa3b3f5c57af447e0ba112fd8e58b9b676dea11065416365ef7316b01942e"

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
