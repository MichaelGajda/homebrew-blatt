class Blatt < Formula
  desc "PDF statistics for macOS — page counts, document counts, file sizes"
  homepage "https://github.com/MichaelGajda/blatt"
  url "https://github.com/MichaelGajda/blatt/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "480db7f6118fbc3f677384e36c83574b18e69b5821a4a9c01a34da0d11678513"
  license "MIT"

  depends_on :macos

  def install
    bin.install "src/blatt"
  end

  test do
    assert_match "blatt v", shell_output("#{bin}/blatt --version")
  end
end
