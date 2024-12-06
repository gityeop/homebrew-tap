class Diskop < Formula
  include Language::Python::Virtualenv
  desc "Terminal User Interface (TUI) disk management tool for macOS"
  homepage "https://github.com/gityeop/diskop"
  url "https://github.com/gityeop/diskop/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "e5d2d1a37071d9daade5531dd72ed59c371b7e292e94bea0d961de68e08380f2"
  license "MIT"

  depends_on "python@3.11"

  resource "readchar" do
    url "https://files.pythonhosted.org/packages/source/r/readchar/readchar-4.0.5.tar.gz"
    sha256 "08a456c2d7c1888cde3f4688b542621b676eb38cd6cfed7eb6cb2e2905ddc826"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/diskop", "--version"
  end
end
