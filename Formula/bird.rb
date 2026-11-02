# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.147.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.147.0/bird-darwin-amd64.tar.gz"
      sha256 "1c9f735a7faca855325dfee51ab77f87ddc85dff074355a177c01b8df91ad6b8"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.147.0/bird-darwin-arm64.tar.gz"
      sha256 "8c665b39135c7341e119ae86f04eb868105876f0242607c4cb9758f3f8c5766b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.147.0/bird-linux-amd64.tar.gz"
      sha256 "dec68b3f704ed58be290337a41e34b129031c0aa85f3803bf168e20b8cd14525"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.147.0/bird-linux-arm64.tar.gz"
      sha256 "c30adfe9be0e6653ab13d1b247eb0019e83bd9ef77d8837ec4eba82cf5cdcd50"

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
