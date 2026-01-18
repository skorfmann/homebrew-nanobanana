class Nanobanana < Formula
  desc "CLI tool for generating images using Google's Gemini API"
  homepage "https://github.com/skorfmann/nanobanana"
  version "20260118.145818"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-darwin-arm64"
      sha256 "829634ad6f76e470ef7c7846c3b820604e7ed2acb9998f85050aa49aad2dba0c"

      def install
        bin.install "nanobanana-darwin-arm64" => "nanobanana"
      end
    else
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-darwin-amd64"
      sha256 "b37c029079133f593041aef920b0102c3e558ac797c081367415e8c62286fdaf"

      def install
        bin.install "nanobanana-darwin-amd64" => "nanobanana"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-linux-arm64"
      sha256 "553dc3dcb62f7b43c2d334903edb894415a2f46280cafc47ecd1a705ff26d6ad"

      def install
        bin.install "nanobanana-linux-arm64" => "nanobanana"
      end
    else
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-linux-amd64"
      sha256 "7ad28dfc699fe1cc1c1946e90a845c03564a4deb9a9f9a90db5dbdf281155c9c"

      def install
        bin.install "nanobanana-linux-amd64" => "nanobanana"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanobanana -version")
  end
end
