class McpSkillset < Formula
  include Language::Python::Virtualenv

  desc "Dynamic RAG-powered skills for code assistants via Model Context Protocol"
  homepage "https://github.com/bobmatnyc/mcp-skillset"
  url "https://files.pythonhosted.org/packages/7a/03/2b1c3344937d76253b18f39d66ccc1a1f5825e663b2a7a165eea9fe5f0ba/mcp_skillset-0.7.2.tar.gz"
  sha256 "abe301e5ca92f89667256788b4c179a050e9fb66c026d7b03fc06241da0328e3"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-skillset --version")
  end
end
