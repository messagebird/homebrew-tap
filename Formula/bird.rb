# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.74.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.74.0/bird-darwin-amd64.tar.gz"
      sha256 "e810c68041eaacb7bd391c0803ee2e1c002345fe5c16c63cf71c089d9ff4ac79"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.74.0/bird-darwin-arm64.tar.gz"
      sha256 "fb08cec04f358047f4b5c985d7519fc22ecfd3129899cb649ba82a5ecd02cd78"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.74.0/bird-linux-amd64.tar.gz"
      sha256 "64463440ff7e915e6e9da886dfc6420d1de05cf206d70e0ff39031af74244648"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.74.0/bird-linux-arm64.tar.gz"
      sha256 "61f16abed8849d92f37d736a794097e192166100c01bea0a459e0eb35f03ab02"

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
