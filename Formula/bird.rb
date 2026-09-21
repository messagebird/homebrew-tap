# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.85.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.85.0/bird-darwin-amd64.tar.gz"
      sha256 "543fb5316a50feed3a2931fc9298a0cdfb38f499a7a501faba0902ebf1609d50"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.85.0/bird-darwin-arm64.tar.gz"
      sha256 "718fd21d2095df715f76439d6a811b89e8fc58613e3f41286d9f9045f530c500"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.85.0/bird-linux-amd64.tar.gz"
      sha256 "4f40f6c74d3c23b71775ba43ea6281e8967aa3f9be8cef9218d5c898551fc00d"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.85.0/bird-linux-arm64.tar.gz"
      sha256 "e2390ec01b2c0ced3b4afa711867f67716a7c4302722c69c5e1729f7655b2b3e"

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
