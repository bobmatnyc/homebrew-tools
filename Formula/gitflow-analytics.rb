class GitflowAnalytics < Formula
  include Language::Python::Virtualenv

  desc "Analyze Git repositories for developer productivity insights"
  homepage "https://github.com/bobmatnyc/gitflow-analytics"
  url "https://files.pythonhosted.org/packages/96/07/6a0082efa72731d212b5ba57da241f8f0caa4a577cb706ecff18e2ef61ec/gitflow_analytics-3.13.14.tar.gz"
  sha256 "6f7ac0fedf3f761849ada6fdc87b92a45f902ebfc6bececab25ac0c253823b9a"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Create an isolated virtualenv
    system Formula["python@3.11"].opt_bin/"python3.11", "-m", "venv", libexec

    # Install the package and all its dependencies
    system libexec/"bin/pip", "install", "-v", buildpath

    # Create symlinks for the binaries
    bin.install_symlink libexec/"bin/gitflow-analytics"
    bin.install_symlink libexec/"bin/gfa"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitflow-analytics --version")
    assert_match "Usage:", shell_output("#{bin}/gitflow-analytics --help")
    assert_match version.to_s, shell_output("#{bin}/gfa --version")
  end
end
