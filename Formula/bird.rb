# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.9.0/bird-darwin-amd64.tar.gz"
      sha256 "2cb5c7981e09908ec5ffbffc2daa4f8c1c1faead417b740bb674f216c042a504"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.9.0/bird-darwin-arm64.tar.gz"
      sha256 "1248c7dbfc6ff094ad4f1a57ba628b5f09fcbd579669cae2bc82e26db6fedfb0"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.0/bird-linux-amd64.tar.gz"
      sha256 "5ed2abb0c70a2d4644fd914519d274c443f4b4e382be24cfa20912d15b99dc01"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.9.0/bird-linux-arm64.tar.gz"
      sha256 "5e55695be584c92cac1e868e72f5a4e48f5cf75ce9fe00ab8d6fc9cc706d3125"

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
