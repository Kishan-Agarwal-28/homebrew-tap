class Fsteg < Formula
  desc "High-fidelity FFT block-based frequency domain steganography CLI & library"
  homepage "https://github.com/Kishan-Agarwal-28/fsteg"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.1/fsteg-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "825928034425e85856da4baf209363c3e21c81f075ad50d424e712474f7f4390"
    else
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.1/fsteg-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "f5a74f7e12ebf00819229afa9171f5f513bab9f46beea341d383fdfb2172a50b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.1/fsteg-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "899152c39c68f6a313f7a2d92135d5ff424ae5550e178ce062b2d715502998ec"
    else
      url "https://github.com/Kishan-Agarwal-28/fsteg/releases/download/v0.1.1/fsteg-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef746e59cedadf5a6b37ab470187315c45016605f463d8c68f70df334d84be16"
    end
  end

  def install
    bin.install "fsteg"
  end

  test do
    system "#{bin}/fsteg", "--help"
  end
end
