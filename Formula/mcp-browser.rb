class McpBrowser < Formula
  include Language::Python::Virtualenv

  desc "Browser console log capture and control via MCP for Claude Code"
  homepage "https://github.com/browserpymcp/mcp-browser"
  url "https://files.pythonhosted.org/packages/source/m/mcp-browser/mcp-browser-2.2.0.tar.gz"
  sha256 "eab82aa736ea5b059e42aa3c1d1275f168ad4893cd0fd54e8cabee9acb18e8aa"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Create an isolated virtualenv (without --system-site-packages)
    # This ensures pip and all dependencies are installed in the virtualenv
    system Formula["python@3.11"].opt_bin/"python3.11", "-m", "venv", libexec

    # Install the package and all its dependencies
    system libexec/"bin/pip", "install", "-v", buildpath

    # Create symlink for the binary
    bin.install_symlink libexec/"bin/mcp-browser"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-browser --version")
    assert_match "Usage:", shell_output("#{bin}/mcp-browser --help")
  end
end
