class DevSecuritySetup < Formula
  desc "One-command secret detection pipeline for Git projects"
  homepage "https://github.com/eab-agency/dev-security-setup"
  url "https://github.com/eab-agency/dev-security-setup/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "dc9bdf5d75cb0b49560d58f5060d20eeafdde4ad75ceea3b612b1b7837e0f792"
  license :cannot_represent

  depends_on "pre-commit"
  depends_on "trufflehog"

  def install
    bin.install "setup-security.sh" => "setup-security"
  end

  test do
    system bin/"setup-security", "--version"
  end
end

