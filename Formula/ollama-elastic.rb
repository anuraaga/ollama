class OllamaElastic < Formula
  desc ""
  homepage ""
  version "dbeaea4"

  on_macos do
    url "https://github.com/elastic/ollama/releases/download/fcd811b/ollama-darwin"
    sha256 "c399ca92c0225f32f0482ff4c111013136090b17d4b770bfc7a4c913d4a79cdc"
    def install
      bin.install "ollama-darwin" => "ollama-elastic"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/elastic/ollama/releases/download/fcd811b/ollama-linux-amd64.tgz"
        sha256 "29e42fefa2328537c4fbcc5f0a0b52e872a803527364d07c61b1b2e21456cec9"

        def install
          bin.install "bin/ollama" => "ollama-elastic"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/elastic/ollama/releases/download/fcd811b/ollama-linux-arm64.tgz"
        sha256 "31c49bd76da9776b0fc7399a02f7451b95258c9f2dd9d6928776ccec887d5aa0"

        def install
          bin.install "bin/ollama" => "ollama-elastic"
        end
      end
    end
  end
end
