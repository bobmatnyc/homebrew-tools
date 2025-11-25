class McpTicketer < Formula
  include Language::Python::Virtualenv

  desc "Universal ticket management interface for AI agents with MCP support"
  homepage "https://github.com/bobmatnyc/mcp-ticketer"
  url "https://files.pythonhosted.org/packages/source/m/mcp-ticketer/mcp_ticketer-1.2.10.tar.gz"
  sha256 "c2667031af2accfadd90d52b18a25424e632442b7cacf297dfb512aa48d40d5d"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ticketer --version")
  end
end
