# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.11/bird-darwin-amd64.tar.gz"
      sha256 "ccac703470a2f265e5f926a12ee5dca9b3a031b7bcc57eaa1b48437f2d9c8a96"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.11/bird-darwin-arm64.tar.gz"
      sha256 "e3829d028d7fd8e88908216dcb72c19bcd4405e83b5750c3481586ba627745f0"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.11/bird-linux-amd64.tar.gz"
      sha256 "52642edecb304ef017a521e3a7bf44aea7726348b87cee381f8dcd0035273206"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.11/bird-linux-arm64.tar.gz"
      sha256 "42658cb468f6bd8522e5b455f443cbe05df839607e6cb0e0d708e0b7034055a7"

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
