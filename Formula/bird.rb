# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.170.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.170.0/bird-darwin-amd64.tar.gz"
      sha256 "27a4f3cb5a0f83bffa4121a977e671c809bd480a81039b647e56bafaa9749de5"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.170.0/bird-darwin-arm64.tar.gz"
      sha256 "1b61b0da1dc38854dad65e802e2fa136f6f6a1f911c63ff1a8015d7ef517c4be"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.170.0/bird-linux-amd64.tar.gz"
      sha256 "8afcfb1036eb7c8fdb5874eef9635315144cb88577abf170ef1a094ab751fb2b"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.170.0/bird-linux-arm64.tar.gz"
      sha256 "ad61bd9941fe46f530a6b407a97bf713b24f9a60b85c78f8ac71705e86a2cc67"

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
