class Diskop < Formula
  desc "Terminal User Interface (TUI) disk management tool for macOS"
  homepage "https://github.com/gityeop/diskop"
  url "https://github.com/gityeop/diskop/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "2046b4540fd2bb4d75f9cd3f0cc2bf8a6a93d9cbb2571b4ffd5d6a4ec17a26c5"
  license "MIT"

  depends_on "python@3.11"

  resource "readchar" do
    url "https://files.pythonhosted.org/packages/a1/57/439aaa28659e66265518232bf4291ae5568aa01cd9e0e5f68d12aaf562b6/readchar-4.0.5.tar.gz"
    sha256 "08a456c2d7c1888cde3f4688b542621b676eb38cd6cfed7eb6cb2e2905ddc826"
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
