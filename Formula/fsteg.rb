class Fsteg < Formula
  desc "High-fidelity FFT block-based frequency domain steganography CLI & library"
  homepage "https://github.com/Kishan-Agarwal-28/fsteg"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.1/fsteg-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "9bf820c04cf6a5751158998de5867320d92478b04720184296fdcf56a57239ab"
    else
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.1/fsteg-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "35e2984507ef1a91a3b4d5e2f6e07c653c8bd2e1379a1342363e151e1dee7915"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.1/fsteg-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb52efb95c3fabcac2ad8a384add0d3a6a49ae7a5edc18eb568999806faadff4"
    else
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.1/fsteg-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7af73aaf4570fc29000fe205b313395a5417c3cfe028f4a160190730b24298de"
    end
  end

  def install
    bin.install "fsteg"
  end

  test do
    system "#{bin}/fsteg", "--help"
  end
end
