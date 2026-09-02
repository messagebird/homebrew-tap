# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.65.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.65.0/bird-darwin-amd64.tar.gz"
      sha256 "426261dce62109d56b25edd84156d7bedc91a3e6b25ff5eae9a06bd866d4d4ea"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.65.0/bird-darwin-arm64.tar.gz"
      sha256 "426fd923d19852705bf7c3ddb42ebce15f9367ae5dd826fd94ea42fb39bea85e"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.65.0/bird-linux-amd64.tar.gz"
      sha256 "d1ca53361ef3460f6916e549cafed6446571a301c9153165c4d62dec8aae3c65"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.65.0/bird-linux-arm64.tar.gz"
      sha256 "5865d556d9f3dd9e81a16faf82b9cabb075e2ecfa57fe73d9168f23de2622546"

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
