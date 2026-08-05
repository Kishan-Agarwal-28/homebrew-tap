class Uncomment < Formula
      desc "A CLI tool to uncomment code"
      homepage "https://github.com/Kishan-Agarwal-28/uncomment"
      url "https://github.com/Kishan-Agarwal-28/uncomment/releases/download/v0.1.0/uncomment-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
      version "0.0.0"

      def install
        bin.install "uncomment"
      end

      test do
        system "#{bin}/uncomment", "--version"
      end
    end
