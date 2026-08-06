class Cwcli < Formula
  include Language::Python::Virtualenv

  desc "CLI for managing local Frappe/ERPNext Docker instances"
  homepage "https://github.com/karotkriss/caffeinated-whale-cli"
  url "https://files.pythonhosted.org/packages/a3/73/7b6a7c13790b0d57d335fb2f188d861e2adc262c055f5e3b9a759a6573fd/caffeinated_whale_cli-2.4.0.tar.gz"
  sha256 "66250c64181a0bced7a22cd2526f4512e22537ee3411732f8a4b08becfe33977"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "2.4.0", shell_output("#{bin}/cwcli --version")
  end
end
