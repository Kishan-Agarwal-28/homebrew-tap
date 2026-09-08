class Fsteg < Formula
  desc "High-fidelity FFT block-based frequency domain steganography CLI & library"
  homepage "https://github.com/Kishan-Agarwal-28/fsteg"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.1/fsteg-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "07149deee68cb3d1fb90bb3b629265a5533d4f5bf058e524efd25d3a19e2739c"
    else
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.1/fsteg-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "7cdd5dc19a70839362dadac3f7e0c416f47219cef221bc09df548727734b8302"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.1/fsteg-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9ce5cce25ff96207c4445e71289c6d9631d0aec0eaf2a82f6a8eba0ceb1b393a"
    else
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.1/fsteg-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ea748500e2425b77343152b816fd62818858f716f3c6a4473f682e62b46e340"
    end
  end

  def install
    bin.install "fsteg"
  end

  test do
    system "#{bin}/fsteg", "--help"
  end
end
