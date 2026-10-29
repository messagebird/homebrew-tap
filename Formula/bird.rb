# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.140.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.140.0/bird-darwin-amd64.tar.gz"
      sha256 "f61c022e66ddba458f7bc38c6af449021e1b2258cecf289fefa0db867f8d9a58"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.140.0/bird-darwin-arm64.tar.gz"
      sha256 "dba7a36e9b23dd49a2710a24ac95368b35c711bd2dac488fbcec375b04255e34"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.140.0/bird-linux-amd64.tar.gz"
      sha256 "03bdd8d78672bab645c783375546bb9903dad7166ecd65ee4ae18ae13d6f55f8"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.140.0/bird-linux-arm64.tar.gz"
      sha256 "33973042bd73ab72dad763b03a34172c6874a7b514eca01101b38a574ef15ed0"

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
