# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.53.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.53.1/bird-darwin-amd64.tar.gz"
      sha256 "c396f0a5f8063d4a804fb871f8ae4ddc1aa402226d35b44a2caefb58f7060bb9"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.53.1/bird-darwin-arm64.tar.gz"
      sha256 "d72ab4e6d1a85e3f8c1e03fb7e6506c11734fd404fedcb0c6ff47dad81d9c9b1"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.53.1/bird-linux-amd64.tar.gz"
      sha256 "fb009d9c1d8d0691a57a982864de62b6300c1fd92b8d77fc234e59d7ba8eceb3"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.53.1/bird-linux-arm64.tar.gz"
      sha256 "72102face759822d1965fc6c7569bd9c7979fc59fedc08d88723bbd27568215c"

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
