# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.22.0/bird-darwin-amd64.tar.gz"
      sha256 "c5fe975f85bdac0a69d086b95a23d8f4ee2e721e6892bd7a67db15b4f27526ea"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.22.0/bird-darwin-arm64.tar.gz"
      sha256 "8ba7313f75027022b3d1a5a1ceb9f72f946432c8376e0076cf44cd9016feead1"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.22.0/bird-linux-amd64.tar.gz"
      sha256 "fbe169b1ab28e4ad46bc33a75c577fe853347877047ba2082c45fdd77872713e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.22.0/bird-linux-arm64.tar.gz"
      sha256 "de135617679831a8036acd3596ff7295775aeda9d7214b5aec4fef6798c00e57"

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
