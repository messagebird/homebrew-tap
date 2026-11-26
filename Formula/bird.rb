# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.185.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.185.0/bird-darwin-amd64.tar.gz"
      sha256 "ad622191bd95c65a7065f122ef4282013c8142869566354a63c9b13e2a59f91f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.185.0/bird-darwin-arm64.tar.gz"
      sha256 "22ec14558cb3ced932d45d105c5976c3a7669004403ea6ac1d3931cf51f7c549"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.185.0/bird-linux-amd64.tar.gz"
      sha256 "efa74f19a4798a2ffbad4ef5604d9fdbfe4d4dc7a8aae3904838c5747f6ff0c8"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.185.0/bird-linux-arm64.tar.gz"
      sha256 "3da34eeced083926c30b5f446960c58fe730fedc4ef990af10eba3505f5f6f87"

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
