# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slu < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.84.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.84.0/slu_v0.84.0_darwin_amd64.tar.gz"
      sha256 "05d1a0db0dd930805a817dc47c0b815bfdd1199f7ce186bfa98e0be5e1508b77"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.84.0/slu_v0.84.0_darwin_arm64.tar.gz"
      sha256 "14283e2e946957e4921b6f04a974799397bf2a55d8806e70f3ba1676be7a221c"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slu/releases/download/v0.84.0/slu_v0.84.0_linux_amd64.tar.gz"
        sha256 "8d5f761ecd90ac8b4cf476772c5e3335f29a265672a540b0cdc4356d02a07a6c"

        def install
          bin.install "slu"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slu/releases/download/v0.84.0/slu_v0.84.0_linux_arm64.tar.gz"
        sha256 "543137c341f40e496442c5a948e624e9f58309b0c05ec513b827d5277eb732f4"

        def install
          bin.install "slu"
        end
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
