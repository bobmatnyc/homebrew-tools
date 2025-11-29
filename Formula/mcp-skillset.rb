class McpSkillset < Formula
  include Language::Python::Virtualenv

  desc "Dynamic RAG-powered skills for code assistants via Model Context Protocol"
  homepage "https://github.com/bobmatnyc/mcp-skillset"
  url "https://files.pythonhosted.org/packages/d8/f2/2a658bf7b7d9e72309ee52cd9222afa2e5a5d9048919b9779f3e85bbd9b8/mcp_skillset-0.6.4.tar.gz"
  sha256 "b13eee4533ed4d7e607fc0218b897fd3e6f18093afc91807f5693e7f6ad0505f"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-skillset --version")
  end
end
