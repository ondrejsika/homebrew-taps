# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slr < Formula
  desc "slr"
  homepage "https://github.com/sikalabs/slr"
  version "0.4.0"

  on_macos do
    on_intel do
      url "https://github.com/sikalabs/slr/releases/download/v0.4.0/slr_v0.4.0_darwin_amd64.tar.gz"
      sha256 "d614bae9ba1bf94c25235d79bb31fba847ce25457e32304bda1cfe81b1d1595c"

      def install
        bin.install "slr"
      end
    end
    on_arm do
      url "https://github.com/sikalabs/slr/releases/download/v0.4.0/slr_v0.4.0_darwin_arm64.tar.gz"
      sha256 "6bed7f19678bdbd353c5e1868aa206b3cce003dde2e20f8def490ee42f47530e"

      def install
        bin.install "slr"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slr/releases/download/v0.4.0/slr_v0.4.0_linux_amd64.tar.gz"
        sha256 "063da939ea87c4e2dd78e2de373b27e98d6949c7fb64e91dd7b95e0f7b34d054"

        def install
          bin.install "slr"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slr/releases/download/v0.4.0/slr_v0.4.0_linux_arm64.tar.gz"
        sha256 "fe94f0bfe46abc59046848631d40b21f8e456b278a77d6f68d5e7044f5115d6b"

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
