# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddbrew < Formula
  desc "Simple DynamoDB utility"
  homepage "https://blog.hozi.dev/"
  version "0.0.4"

  on_macos do
    url "https://github.com/shuntaka9576/ddbrew/releases/download/v0.0.4/ddbrew_0.0.4_Darwin_amd64.tar.gz"
    sha256 "a6afb749995a6be4ce8c5ebc6aad27d5847e2eef3d91ddd29ea19f24f5159bf2"

    def install
      bin.install "ddbrew"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Ddbrew
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/shuntaka9576/ddbrew/releases/download/v0.0.4/ddbrew_0.0.4_Linux_amd64.tar.gz"
      sha256 "8e133b61f22f705d465c51e62ca124bb681cc495551e54995ef0bfdb78872942"

      def install
        bin.install "ddbrew"
      end
    end
  end

  test do
    system "#{bin}/ddbrew --help"
  end
end
