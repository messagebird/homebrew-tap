# typed: false
# frozen_string_literal: true

# Generated on release from the built artifacts; do not edit.
class Bird < Formula
  desc "Operate the Bird platform from a shell, script, or AI agent"
  homepage "https://bird.com/cli"
  version "0.153.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://cli.bird.com/releases/v0.153.2/bird-darwin-amd64.tar.gz"
      sha256 "c8cab90616112c93ec4d882653b47a0d66ccdccd5556871c2d4fd99110533ea9"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm?
      url "https://cli.bird.com/releases/v0.153.2/bird-darwin-arm64.tar.gz"
      sha256 "85806a08777a04956042a5a103d681b5fe6fdce7807e47b831035b0563a14b0b"

      define_method(:install) do
        bin.install "bird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.153.2/bird-linux-amd64.tar.gz"
      sha256 "68012947e0ec1ad8c443eab8332ad921b631f9ba290d813daf56446ea4d4a742"

      define_method(:install) do
        bin.install "bird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://cli.bird.com/releases/v0.153.2/bird-linux-arm64.tar.gz"
      sha256 "d3824fb10afd2757a3d9c99eba093bfba4267b1bd1068b8c870ec30b8bc9472c"

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
