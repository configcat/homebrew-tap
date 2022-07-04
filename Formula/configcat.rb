class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.5.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.5.1/configcat-cli_1.5.1_osx-x64.tar.gz"
    sha256 "fbd810bad38af0d529ad02c6765594c15f70ca246f64529751eeb9f568875382"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.5.1/configcat-cli_1.5.1_linux-x64.tar.gz"
    sha256 "7f512c0c41d21925b102d3aef65965cc56fd87a19508801a8fb536f7dea2f507"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.5.1", shell_output("#{bin}/configcat --version")
  end
end
