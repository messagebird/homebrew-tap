# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.109.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.109.0/bird-darwin-amd64.tar.gz"
      sha256 "c7aef9a2a01e84c7c9b8c592f652e1af30c810d99d7972ea8a93089270531ce3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.109.0/bird-darwin-arm64.tar.gz"
      sha256 "6acaffaf0903f6fc704ef217e1cecf5fca0057e330ef098c478be3fb9f072688"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.109.0/bird-linux-amd64.tar.gz"
      sha256 "019b4970d0a4c6f0acc49e2a815455d006c1d2448c597e1d6d0077ed20a07231"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.109.0/bird-linux-arm64.tar.gz"
      sha256 "7c6927c6342ca9d7bb58aa29dc34d53800959207e1c31e37aa829fe7dffc06b7"

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
