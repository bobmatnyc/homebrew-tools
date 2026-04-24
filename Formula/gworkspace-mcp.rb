class GworkspaceMcp < Formula
  include Language::Python::Virtualenv

  desc "Google Workspace MCP Server - Connect Claude to Google Workspace APIs"
  homepage "https://github.com/masapasa/google-workspace-mcp"
  url "https://files.pythonhosted.org/packages/7b/35/f383afb013aae248b7e0b65abc268b2fc1f2062eb8afcc07878024b09c23/gworkspace_mcp-0.5.2.tar.gz"
  sha256 "a9c3b17e27858d8c258e4be11e3841a6fe6868ca251c6d4152ed4d325d9d8135"
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
