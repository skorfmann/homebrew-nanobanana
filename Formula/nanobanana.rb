class Nanobanana < Formula
  desc "CLI tool for generating images using Google's Gemini API"
  homepage "https://github.com/skorfmann/nanobanana"
  version "20260118.144053"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-darwin-arm64"
      sha256 "926129b0cf275bbbc1d79aee468bbada8811d096c53b879a43225c4e9174e374"

      def install
        bin.install "nanobanana-darwin-arm64" => "nanobanana"
      end
    else
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-darwin-amd64"
      sha256 "3274e32176d63fb13b2a9c376333b44999346117a93a0e8df928b951fc5ff3b8"

      def install
        bin.install "nanobanana-darwin-amd64" => "nanobanana"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-linux-arm64"
      sha256 "ba7a91ab8af5a1e481b02baf5a54b2c1f5b9f1fc293533a4515ced8b1e19437f"

      def install
        bin.install "nanobanana-linux-arm64" => "nanobanana"
      end
    else
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-linux-amd64"
      sha256 "75e8f508400f083d0d6ce5a7492dc9a9a6972f0f69dd29384180e7a90aebb605"

      def install
        bin.install "nanobanana-linux-amd64" => "nanobanana"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanobanana -version")
  end
end
