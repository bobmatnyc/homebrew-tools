class McpSkillset < Formula
  include Language::Python::Virtualenv

  desc "Dynamic RAG-powered skills for code assistants via Model Context Protocol"
  homepage "https://github.com/bobmatnyc/mcp-skillset"
  url "https://files.pythonhosted.org/packages/source/m/mcp-skillset/mcp_skillset-0.7.8.tar.gz"
  sha256 "1ae9d8e81bba3d029fd0287880d4f965adbd728dde227739d497e8048e1887ee"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-skillset --version")
  end
end
