class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.2.0"
  license "MIT"
  bottle :unneeded
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.2.0/configcat-cli_1.2.0_osx-x64.tar.gz"
    sha256 "2dc555a1314e97ad15dc949eba4afa1085cfbd053d87107c8f858b80b3669efd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.2.0/configcat-cli_1.2.0_linux-x64.tar.gz"
    sha256 "2ffb032bdc1007762c81d701dbf931dbf6d1cf3e0772ac1c6e3d53adf92e50ae"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.2.0", shell_output("#{bin}/configcat --version")
  end
end