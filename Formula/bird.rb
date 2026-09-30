# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.101.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.101.0/bird-darwin-amd64.tar.gz"
      sha256 "c3a8cb943d7b953c7dc1920b24e810f025b3577a602713b2ecdb62f3b7eef97f"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.101.0/bird-darwin-arm64.tar.gz"
      sha256 "a32c4119de3946bcbb941d899689f4226c5ffa95fac9ec36d429c15a6eeafabb"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.101.0/bird-linux-amd64.tar.gz"
      sha256 "c94d08a83701287ea472264bed8b72e8a1e092a7d9c9f3669843090d6276d2f0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.101.0/bird-linux-arm64.tar.gz"
      sha256 "99869f22f6c1dd704db48ae9becd3ee685a04e65cf4b022b75012612f1c68551"

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
