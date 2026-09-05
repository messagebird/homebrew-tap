# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.69.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.69.2/bird-darwin-amd64.tar.gz"
      sha256 "6811076bb9ff7a6b3aef51047f5a420441c89f74895c962737bee7293c4bdc32"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.69.2/bird-darwin-arm64.tar.gz"
      sha256 "900b2d694077fa12d218565077ee95ae107e7a8bbdba67554114386fd8cf94af"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.69.2/bird-linux-amd64.tar.gz"
      sha256 "561bdb2a40eacf54459899b9344a69654f9725d614f13adb2fb621065531344c"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.69.2/bird-linux-arm64.tar.gz"
      sha256 "c15e3aefebac93804fcb3580eb6f440cbd2ed4891f9fe3a3aa0b6f166fc26e16"

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
