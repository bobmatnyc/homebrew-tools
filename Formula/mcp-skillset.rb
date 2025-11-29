class McpSkillset < Formula
  include Language::Python::Virtualenv

  desc "Dynamic RAG-powered skills for code assistants via Model Context Protocol"
  homepage "https://github.com/bobmatnyc/mcp-skillset"
  url "https://files.pythonhosted.org/packages/b4/f3/d57afa842deb450da4fb1c1d968635f4a91802beac99761eb31dade288b9/mcp_skillset-0.6.3.tar.gz"
  sha256 "4e8d7a46680d3074eb5e52c2e868ac1c2632d6ef3c0739acf37e79ca46095078"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-skillset --version")
  end
end
