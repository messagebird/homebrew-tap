# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.111.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.111.0/bird-darwin-amd64.tar.gz"
      sha256 "1459ce5536e6f0d001e5e14584abd96c47f31825d9c3f2d98d44df06b17d03e9"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.111.0/bird-darwin-arm64.tar.gz"
      sha256 "2e89d6e969ec3f2e8a44a788991b159575337bbbbc50c2544012b2df6a3cf2f7"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.111.0/bird-linux-amd64.tar.gz"
      sha256 "61697ba2f4e14bdeef3ae9772d16b01b84cc0e79fea00beab48e44ac1d40e907"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.111.0/bird-linux-arm64.tar.gz"
      sha256 "b355594059bfd4eb88fa608da8ba90ad3d6d6db0c1f1e966d6ed09f9017f3d3a"

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
