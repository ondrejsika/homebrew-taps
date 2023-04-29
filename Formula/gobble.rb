# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gobble < Formula
  desc "gobble"
  homepage "https://github.com/sikalabs/gobble"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/gobble/releases/download/v0.6.0/gobble_v0.6.0_darwin_amd64.tar.gz"
      sha256 "ef535738f12f650498a22cae7bab060d5177d9a5f27858e2d00ca331a346af54"

      def install
        bin.install "gobble"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/gobble/releases/download/v0.6.0/gobble_v0.6.0_darwin_arm64.tar.gz"
      sha256 "e0f87e10fc2e8ba9112f23e09aefe5c47b2cd395e38a9b573e15719283863b97"

      def install
        bin.install "gobble"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/gobble/releases/download/v0.6.0/gobble_v0.6.0_linux_arm64.tar.gz"
      sha256 "75397b5c787e51cb77f37df62f51b9736907814232de89ff5d18999edc5d2f99"

      def install
        bin.install "gobble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/gobble/releases/download/v0.6.0/gobble_v0.6.0_linux_amd64.tar.gz"
      sha256 "3c095b8bf7b5216f99bb60cec61a4560bc2cbf142d074919577b402290c3912d"

      def install
        bin.install "gobble"
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary: https://github.com/sikalabs/gobble
    EOS
  end

  test do
    system "#{bin}/gobble version"
  end
end
