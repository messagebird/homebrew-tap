# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.164.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.164.0/bird-darwin-amd64.tar.gz"
      sha256 "1fa36527e1a81f99ff1669299eca3bc5c891157b60252b003b43fd9419fe7de9"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.164.0/bird-darwin-arm64.tar.gz"
      sha256 "56fa56ad01ba4f7a870dd022c242e13edaee074252efffe6137d0ac6974dc580"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.164.0/bird-linux-amd64.tar.gz"
      sha256 "8104ad0e500e7495c0e162bfd34f7ff073586cf40f6c934227cc5f7741740b9a"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.164.0/bird-linux-arm64.tar.gz"
      sha256 "a65fff251d84c72e3b42962a5cc9b359d9ba645cc77413e05233ff997b301deb"

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
