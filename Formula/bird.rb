# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.3/bird-darwin-amd64.tar.gz"
      sha256 "e19b6bd28b0ff292dd0f3c4ffa430b319ef843ab32ae79e301256b1022472d1d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.3/bird-darwin-arm64.tar.gz"
      sha256 "f2c225a9c31c0c5ccf254ca451716d28786666d8fcce91ba8b34b95c8de2950d"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.3/bird-linux-amd64.tar.gz"
      sha256 "fa836f0932f9a01eb7e388ce51b7a18d4b331140b03261e52ce604d38c596c68"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.3/bird-linux-arm64.tar.gz"
      sha256 "27e20dc69721b3f10015e3b22bc3062c34b89d23f2b3d79952442eab8c0f2e4c"

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
