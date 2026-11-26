# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.183.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.183.0/bird-darwin-amd64.tar.gz"
      sha256 "95add4cddfcf3da729796e46bd21ec9c1265d1308baaa0a51eba1a043cc31c6a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.183.0/bird-darwin-arm64.tar.gz"
      sha256 "c80b51e8917cb0ce96b52f402350cb6bbb46a011a69929e814afab99dd0fda78"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.183.0/bird-linux-amd64.tar.gz"
      sha256 "e4dbb2e6e7cb3c595d9e20dfb333f2a74b285f86b8bd7cddda7b78df6bad41eb"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.183.0/bird-linux-arm64.tar.gz"
      sha256 "11a7044db31bcdb4635fda069b829f0288e4a85afee9067792b141a9e691b495"

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
