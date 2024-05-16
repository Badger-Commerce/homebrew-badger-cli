class Badger < Formula
  include Language::Python::Virtualenv

  desc "A CLI tool for Badger Commerce"
  homepage "https://github.com/Badger-Commerce/badger-cli"
  url "https://files.pythonhosted.org/packages/0f/f9/3d314f3bdee7a517b294ad546be64f29a15d1f26fa613a0b5afe7815729a/badger_cli-0.1.0.tar.gz"
  sha256 "4d3c332568bea774a265c44ca9f01acc6429d064a5179c9298e66e56567d66ae"
  license "MIT"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/badger", "--help"
  end
end
