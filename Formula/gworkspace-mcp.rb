class GworkspaceMcp < Formula
  include Language::Python::Virtualenv

  desc "Google Workspace MCP Server - Connect Claude to Google Workspace APIs"
  homepage "https://github.com/masapasa/google-workspace-mcp"
  url "https://files.pythonhosted.org/packages/bc/dc/531f380b4d7f6e9758410cde7843d4925a71d6a1c601272e002e8cee9f52/gworkspace_mcp-0.3.0.tar.gz"
  sha256 "0e6094f66a7847542d3ad21b6066467cec4702aecb75874c61df7e703e094b20"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Create an isolated virtualenv
    system Formula["python@3.11"].opt_bin/"python3.11", "-m", "venv", libexec

    # Install the package and all its dependencies
    system libexec/"bin/pip", "install", "-v", buildpath

    # Create symlink for the binary
    bin.install_symlink libexec/"bin/gworkspace-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gworkspace-mcp --version")
    assert_match "Usage:", shell_output("#{bin}/gworkspace-mcp --help")
  end
end
