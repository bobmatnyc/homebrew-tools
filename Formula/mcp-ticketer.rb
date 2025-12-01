class McpTicketer < Formula
  include Language::Python::Virtualenv

  desc "Universal ticket management interface for AI agents with MCP support"
  homepage "https://github.com/bobmatnyc/mcp-ticketer"
  url "https://files.pythonhosted.org/packages/2b/d7/7b0f806b81cc3349590e5e0dfe1ccc6d0ab885e4e1c6ccc02bef7e8beee6/mcp_ticketer-1.4.4.tar.gz"
  sha256 "5bf1fcd11df845df58e424d1984e07a34bde993e6e2fa8a618b27ee369994bac"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ticketer --version")
  end
end
