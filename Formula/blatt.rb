class Blatt < Formula
  desc "PDF statistics for macOS — page counts, document counts, file sizes"
  homepage "https://github.com/MichaelGajda/blatt"
  url "https://github.com/MichaelGajda/blatt/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "7336389e3cf679ec9ad25ef454f60ee37f3b1361347d7a07c6102c65759d979d"
  license "MIT"

  depends_on :macos

  def install
    bin.install "src/blatt"
  end

  test do
    assert_match "blatt v", shell_output("#{bin}/blatt --version")
  end
end
