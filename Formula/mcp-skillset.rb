class McpSkillset < Formula
  include Language::Python::Virtualenv

  desc "Dynamic RAG-powered skills for code assistants via Model Context Protocol"
  homepage "https://github.com/bobmatnyc/mcp-skillset"
  url "https://files.pythonhosted.org/packages/source/m/mcp-skillset/mcp_skillset-0.6.8.tar.gz"
  sha256 "33ef10ec3a3462c76e8d39540dfc1e39fb7bfe787ef0d290352b4133374fd3e1"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-skillset --version")
  end
end
