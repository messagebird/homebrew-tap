# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.13.0/bird-darwin-amd64.tar.gz"
      sha256 "4548a9a4c312c365bf72d186cec53b164d9fd08af77825d5ad3e1094e605bf27"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.13.0/bird-darwin-arm64.tar.gz"
      sha256 "1eb7b50c95070738599edcf21e25ac51d33c4f9cab01f89e943e47112cbd2960"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.13.0/bird-linux-amd64.tar.gz"
      sha256 "ba61ea5711ed1097ea7ce2ff9909b6c788529b4ca4521bc87e3b651455d6a9b7"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.13.0/bird-linux-arm64.tar.gz"
      sha256 "9092f66ac8e72af57084700ad805f918f610c8a0f203fafd012dceebc4386909"

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
