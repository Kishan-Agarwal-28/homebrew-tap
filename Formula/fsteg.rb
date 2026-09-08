class Fsteg < Formula
  desc "High-fidelity FFT block-based frequency domain steganography CLI & library"
  homepage "https://github.com/Kishan-Agarwal-28/fsteg"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.0/fsteg-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7866401f14f981bb38ad3caddcbb5f0c443c0053227a85b06a4d2911e08ed6f4"
    else
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.0/fsteg-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0433c2a922e984085f60efc723f445f02bc2e770508f66cfa072e790c8766ff1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.0/fsteg-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5634afdd454c539a4834334349a18c8d4ff198368d12173a091a36483bd0aca6"
    else
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.0/fsteg-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bdf4c7c04c992ac61d297f33b3507846505dfa00c0cba44c6e0292dfec0e7ae3"
    end
  end

  def install
    bin.install "fsteg"
  end

  test do
    system "#{bin}/fsteg", "--help"
  end
end
