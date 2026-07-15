# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.8.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.platform.bird.com/releases/v0.8.5/bird-darwin-amd64.tar.gz"
      sha256 "f1dfdbf02484adadd76364c9383467544ac28bb7f8c540e07d0c7bf89f08453e"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.platform.bird.com/releases/v0.8.5/bird-darwin-arm64.tar.gz"
      sha256 "1746965e3b710c1fd772df13423535f60eff67855e79f36cfe27d33ce58d288c"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.5/bird-linux-amd64.tar.gz"
      sha256 "7b70caa4cf325baca35b88cb45f52e61e946e11c781b420192bb40db274bcf17"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.platform.bird.com/releases/v0.8.5/bird-linux-arm64.tar.gz"
      sha256 "6d4cb45a8a808114b06dd98b27eb9273dc0fe0157fb4403fd674611d51a431ae"

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
