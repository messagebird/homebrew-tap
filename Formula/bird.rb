# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.157.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.157.2/bird-darwin-amd64.tar.gz"
      sha256 "9cea5fadaf489cfd15ad3503786319b8ac98acccc95edc6f31ecd84a05b3ca42"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.157.2/bird-darwin-arm64.tar.gz"
      sha256 "9ae930086e176cea83f24528fcc057de552a87a010cb120937e3eb98db11886f"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.157.2/bird-linux-amd64.tar.gz"
      sha256 "4597d4d4833261ef50b7b21001d5be2abebd521504153187b4a9de7a3a98b498"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.157.2/bird-linux-arm64.tar.gz"
      sha256 "cb19d6ad79a8fa3a1bd433d9ff825bf4aedafccae02d3646fd447ffee83b2b1a"

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
