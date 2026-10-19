# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.124.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.124.0/bird-darwin-amd64.tar.gz"
      sha256 "a248b21fa18378a7d43be95adbdc102ba2c43542564dbb8bd0b2040e4c43f880"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.124.0/bird-darwin-arm64.tar.gz"
      sha256 "f90090813fc02d2296f2da56168c060ea624eb3964d6899ad7b349e82e5ef061"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.124.0/bird-linux-amd64.tar.gz"
      sha256 "eb94e0029f6c1f70f0197ebd3f942b337b4ab2dad245a9332bcd580b701a85e4"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.124.0/bird-linux-arm64.tar.gz"
      sha256 "059e52b6502d48f664e70e6b939f06e264db6191f246c68905ad7aae98276cd1"

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
