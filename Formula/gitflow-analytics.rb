class GitflowAnalytics < Formula
  include Language::Python::Virtualenv

  desc "Analyze Git repositories for developer productivity insights"
  homepage "https://github.com/bobmatnyc/gitflow-analytics"
  url "https://files.pythonhosted.org/packages/source/g/gitflow-analytics/gitflow_analytics-3.14.15.tar.gz"
  sha256 "7b2727ee02991b484140bc999f896f43c0ee8e4aa514e98527138d26e308978b"
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
