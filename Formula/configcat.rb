class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.5.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.5.1/configcat-cli_2.5.1_osx-x64.tar.gz"
    sha256 "e944fcfa124264f8de04ce52cad9b7eb819141bc141a0b6f09142836275ce94c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.5.1/configcat-cli_2.5.1_osx-arm64.tar.gz"
    sha256 "30ee8a6d866af92ac7d5ee2ea7c59777e895df3145ccd4c23b515513a78acb5c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.5.1/configcat-cli_2.5.1_linux-x64.tar.gz"
    sha256 "de5bcf6846aa868645dc0615471222e31bde15a8129e0e3bf71516dcaece1644"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.5.1", shell_output("#{bin}/configcat --version")
  end
end
