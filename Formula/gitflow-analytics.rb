class GitflowAnalytics < Formula
  include Language::Python::Virtualenv

  desc "Analyze Git repositories for developer productivity insights"
  homepage "https://github.com/bobmatnyc/gitflow-analytics"
  url "https://files.pythonhosted.org/packages/source/g/gitflow-analytics/gitflow_analytics-3.13.15.tar.gz"
  sha256 "2f70462902314bb200141db53fe153fc5e2955cca0e3e42150fb40b4c70e36cc"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gfa --version")
    assert_match "Usage:", shell_output("#{bin}/gfa --help")
  end
end
