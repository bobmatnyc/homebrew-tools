class McpTicketer < Formula
  include Language::Python::Virtualenv

  desc "Universal ticket management interface for AI agents with MCP support"
  homepage "https://github.com/bobmatnyc/mcp-ticketer"
  url "https://files.pythonhosted.org/packages/source/m/mcp-ticketer/mcp-ticketer-2.2.12.tar.gz"
  sha256 "622815442be9d139c39c5943043a6349286b689eb6ebe10dd705f925d61d08c1"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ticketer --version")
  end
end
