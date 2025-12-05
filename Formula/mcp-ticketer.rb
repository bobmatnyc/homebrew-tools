class McpTicketer < Formula
  include Language::Python::Virtualenv

  desc "Universal ticket management interface for AI agents with MCP support"
  homepage "https://github.com/bobmatnyc/mcp-ticketer"
  url "https://files.pythonhosted.org/packages/b9/e1/1e06166916c7feee2edeb8b1854472f4244292314a2ad1fb51903f072582/mcp_ticketer-2.1.3.tar.gz"
  sha256 "22f35a44dc3d5e9d43debf71c1c6d5f1da85b5d3f461725d387901d77938ec94"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ticketer --version")
  end
end
