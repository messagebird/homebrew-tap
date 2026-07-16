# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.8.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.8.8/bird-darwin-amd64.tar.gz"
      sha256 "36b5f600b36924492d466048d8e22897d9aad0a92a821cbb9510b631e45345e8"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.8.8/bird-darwin-arm64.tar.gz"
      sha256 "ec298bb9ce026a3b1a5c1994c654f9caedfbf09cf86114df73518194e8c4c427"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.8/bird-linux-amd64.tar.gz"
      sha256 "15197ad5db41b037246ec0f18ee9942ab67ecf5fe7dba6569f24e618739e98a1"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.8/bird-linux-arm64.tar.gz"
      sha256 "3c1307db0cc00674b32d2235a5b976847c3b3e2c0cb126ab32e807af8450ef84"

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
