# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.69.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.69.0/bird-darwin-amd64.tar.gz"
      sha256 "13194b80607bb82603a68b7cfd772132350d423f22a3d499c93b865b1d69fa05"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.69.0/bird-darwin-arm64.tar.gz"
      sha256 "51f2a6d357cf16791a65d91e0a266443a3d66d44956c52cb23bda1325bb5e85d"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.69.0/bird-linux-amd64.tar.gz"
      sha256 "5c6b9074e12917a2295dc47561ba01e6601cb917f063d790864633c62d6fd418"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.69.0/bird-linux-arm64.tar.gz"
      sha256 "a70789fcb8b44226fe08a206d0eade0a1723c306379a87ca4a484b7fca72b9be"

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
