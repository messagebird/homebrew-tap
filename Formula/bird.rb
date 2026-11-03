# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.153.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.153.0/bird-darwin-amd64.tar.gz"
      sha256 "3b0eec27321173d5e4bfda93a6c33e31fd55787c73c110e906b13787cf07f69a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.153.0/bird-darwin-arm64.tar.gz"
      sha256 "09f45defa746e3460b0a9c6841e737101ef40fbaa46971a14795ad165cae994e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.153.0/bird-linux-amd64.tar.gz"
      sha256 "7c10fa81256ecd82a0607d48e1fb4fa17585a5538a9f3d814b52c181bff3065a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.153.0/bird-linux-arm64.tar.gz"
      sha256 "5fe37438802b8229d5d89db4156c89fb597e61d0987071441c495adac176e84a"

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
