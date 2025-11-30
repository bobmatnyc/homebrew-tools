class McpTicketer < Formula
  include Language::Python::Virtualenv

  desc "Universal ticket management interface for AI agents with MCP support"
  homepage "https://github.com/bobmatnyc/mcp-ticketer"
  url "https://files.pythonhosted.org/packages/25/41/ccf73ef781381593cfb82fc811321c5ca77e62bc889ec85db83f325d767e/mcp_ticketer-1.4.1.tar.gz"
  sha256 "e840db6e7e9683c618f6901e99ce7b3372a2b8ca36327c463ef23e81e242dc8d"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ticketer --version")
  end
end
