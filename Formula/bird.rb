# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.111.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.111.2/bird-darwin-amd64.tar.gz"
      sha256 "5d72a9a7fc33b08c642bdd682f963797bba9121761a4b96c026b7bb4c7e14de8"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.111.2/bird-darwin-arm64.tar.gz"
      sha256 "6a7a3efff6ea96bbd05e3f061b91a0d06d5021b37cedf3d1c3a5f94dd698e303"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.111.2/bird-linux-amd64.tar.gz"
      sha256 "cd1d78e2f526ec212a4c5edf2702f0158c8598f890fdd7724a0f903e4b3a5853"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.111.2/bird-linux-arm64.tar.gz"
      sha256 "777e572babab4f24fe23d0da2ee779de9620029b18c56669d99142d6a36a2ef3"

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
