class Blatt < Formula
  desc "PDF statistics for macOS — page counts, document counts, file sizes"
  homepage "https://github.com/MichaelGajda/blatt"
  url "https://github.com/MichaelGajda/blatt/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "e5b0e2fcdbccd6d3be1e9039dd9d2233b0a344d4a92409fe4efa7c269851acbf"
  license "MIT"

  depends_on :macos

  def install
    bin.install "src/blatt"
  end

  test do
    assert_match "blatt v", shell_output("#{bin}/blatt --version")
  end
end
