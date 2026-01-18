class Nanobanana < Formula
  desc "CLI tool for generating images using Google's Gemini API"
  homepage "https://github.com/skorfmann/nanobanana"
  version "20260118.145506"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-darwin-arm64"
      sha256 "e3bdc14b14fbe34403e1716464a300b9380d47a62726ae9f5143634e3d25e5d5"

      def install
        bin.install "nanobanana-darwin-arm64" => "nanobanana"
      end
    else
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-darwin-amd64"
      sha256 "c15a58f52357c66e21b6c96f3665a41fe447f2229daa25ad743e04e9415f7936"

      def install
        bin.install "nanobanana-darwin-amd64" => "nanobanana"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-linux-arm64"
      sha256 "bcfe230265f779c076aec80fae2247ac1185e23ac7ef1fd48a3bb5ed0ed5c7d6"

      def install
        bin.install "nanobanana-linux-arm64" => "nanobanana"
      end
    else
      url "https://github.com/skorfmann/nanobanana/releases/download/#{version}/nanobanana-linux-amd64"
      sha256 "0097aa04d6a0d694985fc1465538f0b0f42538d9d008630cede840be6743dd63"

      def install
        bin.install "nanobanana-linux-amd64" => "nanobanana"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nanobanana -version")
  end
end
