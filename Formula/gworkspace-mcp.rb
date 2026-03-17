class GworkspaceMcp < Formula
  include Language::Python::Virtualenv

  desc "Google Workspace MCP Server - Connect Claude to Google Workspace APIs"
  homepage "https://github.com/masapasa/google-workspace-mcp"
  url "https://files.pythonhosted.org/packages/0d/07/66d5aedfd288a7fc8e6a7e551e9ccccc1abfd8df93dc658d5ead7806a477/gworkspace_mcp-0.3.6.tar.gz"
  sha256 "918359298f81d5447289eb68a432a6711aa40405bec1897ae9d436957346d976"
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
