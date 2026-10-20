# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.126.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.126.0/bird-darwin-amd64.tar.gz"
      sha256 "658252e63d326d5548de2fff0fe6fbfd4c26f12f76758c9ae18bfeaf94ff04c2"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.126.0/bird-darwin-arm64.tar.gz"
      sha256 "3b2b55f96147a18f0b2d19aa41f427f07ac1463d7ddaa44a01d381a96ad76b71"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.126.0/bird-linux-amd64.tar.gz"
      sha256 "5902c31c17964d01b431b79dd0e1ab26fc3f7da43fa1a506cf4df4b48a1969b0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.126.0/bird-linux-arm64.tar.gz"
      sha256 "2e1ca99dc46f4dfe8cf1a89c559786c3dde1ef55660915ee8073774a6143902b"

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
