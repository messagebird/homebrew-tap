# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.38.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.38.1/bird-darwin-amd64.tar.gz"
      sha256 "4f7e87840c0babf371b81d65d15cc491b1ae12fb8b4b4dd58fe6b114ddf23f39"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.38.1/bird-darwin-arm64.tar.gz"
      sha256 "0a05622f8e582f97de1193a0cd311a5b4e85438f7766f1d3451aecd9c911746b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.38.1/bird-linux-amd64.tar.gz"
      sha256 "94420e0aca80d51babdbebe0bf5d2a2b98d4ef9df47c715e2b7484374483e7c1"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.38.1/bird-linux-arm64.tar.gz"
      sha256 "4d868d8910524751a5abaf469c3066857b1ad52ea230c5df76aca354ebdf0a5c"

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
