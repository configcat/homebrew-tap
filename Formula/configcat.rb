class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.1.0"
  license "MIT"
  bottle :unneeded
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.1.0/configcat-cli_1.1.0_osx-x64.tar.gz"
    sha256 "cb4503f356aba1a350b4e95f2505fb2703ddd0f33c1c646bc7b1bf2e2dad4fea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.1.0/configcat-cli_1.1.0_linux-x64.tar.gz"
    sha256 "055470654c52abb82c51b28646df588d47d8a1a263708d84832daaf897cfc16a"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.1.0", shell_output("#{bin}/configcat --version")
  end
end