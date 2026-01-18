class Nanobanana < Formula
  desc "CLI tool for generating images using Google's Gemini API"
  homepage "https://github.com/skorfmann/nanobanana"
  version "20260118.145857"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-darwin-arm64"
      sha256 "a74667f58df2a7b10ea05c1229ad3b33803db331a3f3be3551c098476401755b"

      def install
        bin.install "nanobanana-darwin-arm64" => "nanobanana"
      end
    else
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-darwin-amd64"
      sha256 "459002cf5ed85678494376c8832ba358d4def01bcfa8cca9ddaf0fa6ef9accf5"

      def install
        bin.install "nanobanana-darwin-amd64" => "nanobanana"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-linux-arm64"
      sha256 "e675754fd1f45bb9528a2891fa3d5cbb5082072c9a9ef0296306581d5b6bd2b2"

      def install
        bin.install "nanobanana-linux-arm64" => "nanobanana"
      end
    else
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-linux-amd64"
      sha256 "d85aeaf8ff28a656e3c314cf8746de6e3bbbe0462565472c04fcd787697e8de8"

      def install
        bin.install "nanobanana-linux-amd64" => "nanobanana"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanobanana -version")
  end
end
