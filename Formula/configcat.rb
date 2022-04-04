class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.4.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.4.1/configcat-cli_1.4.1_osx-x64.tar.gz"
    sha256 "5ecb4bcd4d9440e05d5a20a662e1912a1f7b998d2cdc61a538a4e8cdf908a84d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.4.1/configcat-cli_1.4.1_linux-x64.tar.gz"
    sha256 "011a5455f894e2195f6e4dfd53263bd8e4eadae993e9a5267a402d8413320a18"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.4.1", shell_output("#{bin}/configcat --version")
  end
end
