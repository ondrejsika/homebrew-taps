# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slr < Formula
  desc "slr"
  homepage "https://github.com/sikalabs/slr"
  version "0.13.0"

  on_macos do
    on_intel do
      url "https://github.com/sikalabs/slr/releases/download/v0.13.0/slr_v0.13.0_darwin_amd64.tar.gz"
      sha256 "7f0b408b74a576bb764850237b166c4d06d43918bddc773ca07325a4e335b073"

      def install
        bin.install "slr"
      end
    end
    on_arm do
      url "https://github.com/sikalabs/slr/releases/download/v0.13.0/slr_v0.13.0_darwin_arm64.tar.gz"
      sha256 "a89008ba58a00a44f99323e574515ef2a442656bbc34c9ccd2e23a872e52cd10"

      def install
        bin.install "slr"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slr/releases/download/v0.13.0/slr_v0.13.0_linux_amd64.tar.gz"
        sha256 "fd2d945919431a8e8bc8980972e5a9f230ab8eef33f0fc3dafef7a1bbf6a5c79"

        def install
          bin.install "slr"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slr/releases/download/v0.13.0/slr_v0.13.0_linux_arm64.tar.gz"
        sha256 "f759c0457def9dac5d7f28f3fd4005f3a484c7534dcab042c5aa63d5f9b47e0a"

        def install
          bin.install "slr"
        end
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary: https://github.com/sikalabs/slr
    EOS
  end

  test do
    system "#{bin}/slr version"
  end
end
