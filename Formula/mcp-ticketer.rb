class McpTicketer < Formula
  include Language::Python::Virtualenv

  desc "Universal ticket management interface for AI agents with MCP support"
  homepage "https://github.com/bobmatnyc/mcp-ticketer"
  url "https://files.pythonhosted.org/packages/source/m/mcp-ticketer/mcp-ticketer-2.2.14.tar.gz"
  sha256 "3423badef67d043f146906d2b9b678fb591374d315285a7ee2c9b2639abbae52"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-ticketer --version")
  end
end
