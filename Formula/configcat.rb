class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.4.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.4.1/configcat-cli_2.4.1_osx-x64.tar.gz"
    sha256 "9a908063db6fe9b95ecfacd5282f68e01a917b81db2e2db6c665509c7d60a0b5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.4.1/configcat-cli_2.4.1_osx-arm64.tar.gz"
    sha256 "ba63de76be6fade86db38c408ba79f346a2f4a2a0b79a862ec962d6bbe6cead8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.4.1/configcat-cli_2.4.1_linux-x64.tar.gz"
    sha256 "0338bfda184c629bbca117e9c216433d3f6d28aa09a64af9b71486fc90d1d0db"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.4.1", shell_output("#{bin}/configcat --version")
  end
end
