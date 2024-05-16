class Badger < Formula
  include Language::Python::Virtualenv

  desc "A CLI tool for Badger Commerce"
  homepage "https://github.com/Badger-Commerce/badger-cli"
  url "https://github.com/Badger-Commerce/badger-cli/archive/v0.1.0.tar.gz"
  sha256 "9bd85d8e7293d4e25bbe9572b2a7a94b839143bb63ba63b36a57bc02b4769104"
  license "MIT"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/badger", "--help"
  end
end
