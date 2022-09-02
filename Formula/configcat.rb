class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.6.2"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.6.2/configcat-cli_1.6.2_osx-x64.tar.gz"
    sha256 "57a3cd594bf110304b1850d9109a02ee8d5d1ccfdb2289f55c0aad9d5311f4a2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v1.6.2/configcat-cli_1.6.2_osx-arm64.tar.gz"
    sha256 "30df48614429f5f716d25758b637736b1d8883efc3f7cbd45984c36667d73bde"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.6.2/configcat-cli_1.6.2_linux-x64.tar.gz"
    sha256 "2c20042f5e6b4dfbf4046aff82c7ef11fac1272dc031058574ecbaf8be0a29cc"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.6.2", shell_output("#{bin}/configcat --version")
  end
end
