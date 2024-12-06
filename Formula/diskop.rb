class Diskop < Formula
  desc "Terminal User Interface (TUI) disk management tool for macOS"
  homepage "https://github.com/gityeop/diskop"
  url "https://github.com/gityeop/diskop/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "2046b4540fd2bb4d75f9cd3f0cc2bf8a6a93d9cbb2571b4ffd5d6a4ec17a26c5"
  license "MIT"

  depends_on "python@3.11"

  resource "readchar" do
    url "https://files.pythonhosted.org/packages/50/39/e0d425b0fb01f2f16d70a22d4cfff974fd0de7bb0d85da72dbc62ff27405/readchar-4.0.5-py3-none-any.whl"
    sha256 "76ec784a5dd2afac3b7da8003329834cdd9824294c260fb8aec6b2cef45b2c4d"
  end

  def install
    virtualenv_create(libexec, "python3.11")
    virtualenv_install_with_resources

    bin.install "diskop.py" => "diskop"
  end

  test do
    system "#{bin}/diskop", "--version"
  end
end
