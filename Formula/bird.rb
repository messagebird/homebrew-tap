# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.139.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.139.0/bird-darwin-amd64.tar.gz"
      sha256 "8ac9c7fd066132cb1e0ad804d70b0c9c10063def9eeca124ddac47e6760ed104"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.139.0/bird-darwin-arm64.tar.gz"
      sha256 "d8fb7aeb5a672fa816d70cd65634285fd470584ad5c399036e1e805863730366"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.139.0/bird-linux-amd64.tar.gz"
      sha256 "540631c6ca108093a9bd09970a8f937085a422dd9ad559b5c6b3886bbd20bc18"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.139.0/bird-linux-arm64.tar.gz"
      sha256 "8054f691d3483be9946c3f628666a25813f8ba7d24c1a6cf61f83fe34a5c8563"

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
