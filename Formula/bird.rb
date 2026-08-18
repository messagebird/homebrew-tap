# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.35.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.35.0/bird-darwin-amd64.tar.gz"
      sha256 "2494cd4e1e2ff6654281c697bf2810d5601479a83b93aacb70e37081b39c8015"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.35.0/bird-darwin-arm64.tar.gz"
      sha256 "93148acfcd61f339ac2930bbc09b4c04d5bad3f6a7b12959171bd7267deb59b0"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.35.0/bird-linux-amd64.tar.gz"
      sha256 "cd7a592f01ba983572b93c23665b0fcc5b23006c8fc4d16fd320a35c7b3e5d37"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.35.0/bird-linux-arm64.tar.gz"
      sha256 "ca4f2f771556908bbc79ca375a974cddfbefc85c85340f677cf84c4082276e14"

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
