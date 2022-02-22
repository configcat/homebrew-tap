class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.4.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.4.0/configcat-cli_1.4.0_osx-x64.tar.gz"
    sha256 "8fa93740a67168fc5761cec23bcaf14a30a963e527a7c197815493d0c8c37378"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.4.0/configcat-cli_1.4.0_linux-x64.tar.gz"
    sha256 "60399c7d071b990f2736243f00be58e79db9bdfab6f156fd5fb39a8adc9ac5d6"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.4.0", shell_output("#{bin}/configcat --version")
  end
end
