# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.138.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.138.1/bird-darwin-amd64.tar.gz"
      sha256 "cf79e6bff33b1b3e7442cb07750f90ebee6672d8490f8249482277f81234d87d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.138.1/bird-darwin-arm64.tar.gz"
      sha256 "e022f866ee32311f1bb56a5a04215791f61e6d282102993bb271864c1749f36a"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.138.1/bird-linux-amd64.tar.gz"
      sha256 "86bf08ecfcd24dacb6e5e61541eca5f06a28ee61b6e029ddc043776fe2295186"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.138.1/bird-linux-arm64.tar.gz"
      sha256 "a20a44f4b07446f709866da39d128bda2608b8a80c1ba34b46dc737a0d3069ec"

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
