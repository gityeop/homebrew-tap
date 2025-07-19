class Diskop < Formula
  include Language::Python::Virtualenv
  desc "Terminal User Interface (TUI) disk management tool for macOS"
  homepage "https://github.com/gityeop/diskop"
  url "https://github.com/gityeop/diskop/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "a49e0174f3415047441dc200ee909c6cf7456b4de3c834056e7b97d7edf4ef92"
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
