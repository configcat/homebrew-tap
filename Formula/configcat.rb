class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.7.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.7.0/configcat-cli_1.7.0_osx-x64.tar.gz"
    sha256 "4a02cdac2298154e2e4b529e401139cb0fd9ec2993c612e355f45abf54076522"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v1.7.0/configcat-cli_1.7.0_osx-arm64.tar.gz"
    sha256 "4d6bb205616f66e052ca66a5953c4937d1631de02aa6d224e1fbd2fa8ada1a4b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.7.0/configcat-cli_1.7.0_linux-x64.tar.gz"
    sha256 "0bc9523c28ee71b057a8661ec54667a57457f182c60654fb9380f50f54144f84"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.7.0", shell_output("#{bin}/configcat --version")
  end
end
