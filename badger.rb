class Badger < Formula
  include Language::Python::Virtualenv

  desc "A CLI tool for Badger Commerce"
  homepage "https://github.com/Badger-Commerce/badger-cli"
  url "https://files.pythonhosted.org/packages/d2/7a/d5f811d1e1b0b209d4c7770f585531d2e822ba480d2daf35a1a2f0a973bc/badger_cli-0.1.0-py3-none-any.whl"
  sha256 "e813495d46ec5d06e844c42f0bfbdd9b9cc4f96ae1323fa96add89253e4f6998"
  license "MIT"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/badger", "--help"
  end
end
