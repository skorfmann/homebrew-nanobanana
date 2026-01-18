class Nanobanana < Formula
  desc "CLI tool for generating images using Google's Gemini API"
  homepage "https://github.com/skorfmann/nanobanana"
  version "20260118.144526"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-darwin-arm64"
      sha256 "c64181496cd757b0d2ffe3453b13c5dcc7314726873912a3a4084444c70598d2"

      def install
        bin.install "nanobanana-darwin-arm64" => "nanobanana"
      end
    else
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-darwin-amd64"
      sha256 "457e175e4eefe43e34330006e7a1fedab6a6722d61060fbf06861ae38b24b50d"

      def install
        bin.install "nanobanana-darwin-amd64" => "nanobanana"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-linux-arm64"
      sha256 "ffac0054be40966a734801f48c443c18836d6c0d0459589ebfa242cf65ee51f3"

      def install
        bin.install "nanobanana-linux-arm64" => "nanobanana"
      end
    else
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-linux-amd64"
      sha256 "737b5b118ed37961f5758adef787c5b78322f589d20c6de81511658a25b9cbd0"

      def install
        bin.install "nanobanana-linux-amd64" => "nanobanana"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanobanana -version")
  end
end
