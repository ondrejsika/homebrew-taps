# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slu < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.59.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.59.0/slu_v0.59.0_darwin_arm64.tar.gz"
      sha256 "13628ef8ae77f9795ca4014b5e5692a5d51f5caf22850c6d1b73d07d362e5ff8"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.59.0/slu_v0.59.0_darwin_amd64.tar.gz"
      sha256 "28771e37d3ea926eac31b0da927a4c5e469e48d0e51347de667ee2a7b3267e17"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.59.0/slu_v0.59.0_linux_arm64.tar.gz"
      sha256 "58cf84465b9eb0c511dbf069409ce450c647e5dfe55b4e7238185897f39052d2"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.59.0/slu_v0.59.0_linux_amd64.tar.gz"
      sha256 "e7de9359cdc59803c6245bdbf91c4b13b63ab8dc1b6901ae26102cdce19de745"

      def install
        bin.install "slu"
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary: https://github.com/sikalabs/slu
    EOS
  end

  test do
    system "#{bin}/slu version"
  end
end
