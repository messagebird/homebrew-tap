# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.109.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.109.1/bird-darwin-amd64.tar.gz"
      sha256 "e26400148f2841981fa79c4766c4b6c2164903cd187b587e4cc3eafb922d9098"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.109.1/bird-darwin-arm64.tar.gz"
      sha256 "4f324a7ca7cee43519219d14de5c1f8eb55a5de76de6cba3fc6728bc1fcf47ac"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.109.1/bird-linux-amd64.tar.gz"
      sha256 "1fe06cb9bcc29073e78ce7e57797d84040fe10123a515d0115127cfebf9010cd"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.109.1/bird-linux-arm64.tar.gz"
      sha256 "29b647170b50e259a9e82a47379966e1156b420bc23606f0222792ffcfc96a08"

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
