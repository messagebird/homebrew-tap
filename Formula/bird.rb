# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.118.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.118.0/bird-darwin-amd64.tar.gz"
      sha256 "2dc61f5f20bd9fccc3f01e61f24e6433877ad5ce2e14b1ec15db3fe8dd4aa55f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.118.0/bird-darwin-arm64.tar.gz"
      sha256 "578069b642ae3cc890696f7ae7b0ec987f3ce5156caef135efe800dc4d0da980"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.118.0/bird-linux-amd64.tar.gz"
      sha256 "f6d10f3809d88b35ca81bcdfd1c2def17706c95d4d1552924ab9bbd47de9d751"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.118.0/bird-linux-arm64.tar.gz"
      sha256 "5eaaf674089dd5e2b7583e29dbc6013530a6dde8a4b211e46db2421a8354e40b"

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
