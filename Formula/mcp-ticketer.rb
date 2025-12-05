class McpTicketer < Formula
  include Language::Python::Virtualenv

  desc "Universal ticket management interface for AI agents with MCP support"
  homepage "https://github.com/bobmatnyc/mcp-ticketer"
  url "https://files.pythonhosted.org/packages/f4/eb/d4c46c8daa9b3f9820fbed1b206be68bc191010c7fcd49f0db5a2df8fe3f/mcp_ticketer-2.2.1.tar.gz"
  sha256 "7523b2b7ef3b114f148c678058069346e63c27ad62210986d30a42ce88be49d4"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ticketer --version")
  end
end
