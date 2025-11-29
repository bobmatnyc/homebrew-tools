class McpSkillset < Formula
  include Language::Python::Virtualenv

  desc "Dynamic RAG-powered skills for code assistants via Model Context Protocol"
  homepage "https://github.com/bobmatnyc/mcp-skillset"
  url "https://files.pythonhosted.org/packages/61/41/1886e3f16f97f024ffc7e49cc80fe38c08818d36e268217e16ca4bf45a32/mcp_skillset-0.6.5.tar.gz"
  sha256 "1165e325eac6e2001159ff36001b99ef2a52617addf33e40b7602f18264e71a6"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-skillset --version")
  end
end
