# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.39.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.39.1/bird-darwin-amd64.tar.gz"
      sha256 "af547102a16e970bb428186f11ceda792fdc742371e21aaa0b823fed2915b6af"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.39.1/bird-darwin-arm64.tar.gz"
      sha256 "d9cb9e8432106d2aae4a66cd0911c1146345242910cc07093b92f74341eb228c"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.39.1/bird-linux-amd64.tar.gz"
      sha256 "586652baa8b5b0b199edec1bfe7e360d2df8cfc0852adb8fa5fdffa6bb8e4db0"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.39.1/bird-linux-arm64.tar.gz"
      sha256 "5dc92b337600d82259b5b9a39413442a38946b40acf90e1c22b7d1190ce207da"

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
