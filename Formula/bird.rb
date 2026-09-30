# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.99.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.99.0/bird-darwin-amd64.tar.gz"
      sha256 "c52b94340c4386a143e67a6adc0117100d2d10b2bf6cdb09036010b325823144"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.99.0/bird-darwin-arm64.tar.gz"
      sha256 "ac404f3dd8424c4a6cc33df3c60b6805172d0b1efc894b5519b5c1930af74944"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.99.0/bird-linux-amd64.tar.gz"
      sha256 "03198408661ed416852d36232c46a10b50f510cbd1798d560228bde84d3f740a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.99.0/bird-linux-arm64.tar.gz"
      sha256 "21aa467113793a26303247f07197ced7a78d1323c5969316e5f3689a58694c2b"

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
