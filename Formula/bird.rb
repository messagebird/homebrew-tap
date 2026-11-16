# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.175.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.175.0/bird-darwin-amd64.tar.gz"
      sha256 "2ed2e42a32eec6209125e5dc4fafa8eba389c10f658fa149e1026028da382ace"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.175.0/bird-darwin-arm64.tar.gz"
      sha256 "bb38b76f8a57fbb0ce6d01b274cbb17aa11d4c550beece7f94aae384bc117f77"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.175.0/bird-linux-amd64.tar.gz"
      sha256 "6421ef3d869cf0335f9e9f4e1fe423119b7264bd55af8c96f7b8be6b4288e538"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.175.0/bird-linux-arm64.tar.gz"
      sha256 "0c9830192aca6a4e28bd730e6cf163c50ea413f32aef7b996fd263517c1ad6ab"

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
