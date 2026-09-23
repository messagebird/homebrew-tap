# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.88.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.88.0/bird-darwin-amd64.tar.gz"
      sha256 "f8f06ed32ead67c8dc5126b69e30adb62f80bc3ef7eeeb87ba436e441a1a0e89"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.88.0/bird-darwin-arm64.tar.gz"
      sha256 "01a9ecae1e2654e965c74267596eb5060a11adc92577110144740d3bf4b44264"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.88.0/bird-linux-amd64.tar.gz"
      sha256 "3823e49e837dec28c9dbe7074b8f4a5dfbca48abf0944fcdb1d287a4c458999d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.88.0/bird-linux-arm64.tar.gz"
      sha256 "46843516905fdf589f199d4c72ffbf77c7f4a2246483832ef925e1cba476a992"

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
