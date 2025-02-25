# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class NoFriPush < Formula
  desc "Don't Push to Production on Friday!"
  homepage "https://shuntaka.dev/"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shuntaka9576/no-fri-push/releases/download/v0.1.3/no-fri-push_0.1.3_darwin_amd64.tar.gz"
      sha256 "a363289369b12a1b77ff358ad7281423981f194aae1bc53b9bb061012d8c34ef"

      def install
        bin.install "no-fri-push"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shuntaka9576/no-fri-push/releases/download/v0.1.3/no-fri-push_0.1.3_darwin_arm64.tar.gz"
      sha256 "a844d7bc73b6cb695b8e763490e67f28a300fb91dd722b57df8331b30847e425"

      def install
        bin.install "no-fri-push"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shuntaka9576/no-fri-push/releases/download/v0.1.3/no-fri-push_0.1.3_linux_amd64.tar.gz"
        sha256 "7f082116134e22c3ab324415daa6a47a4fe1c48d0d9ab0dbac4cee6fc34bddc8"

        def install
          bin.install "no-fri-push"
        end
      end
    end
  end

  test do
    system "#{bin}/no-fri-push --help"
  end
end
