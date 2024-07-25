class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.3.2"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.3.2/configcat-cli_2.3.2_osx-x64.tar.gz"
    sha256 "1932b1b16d045aada53945f33215a5bcc1f85d0ed89c40b971ac8a84460879d5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.3.2/configcat-cli_2.3.2_osx-arm64.tar.gz"
    sha256 "2fc16dcb88aefd0a4a1bd15915703af131a5b3fb26dfd2dcfd108fe801d5b9b1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.3.2/configcat-cli_2.3.2_linux-x64.tar.gz"
    sha256 "d424ad5ac8642122b898f3f1830bca2f15873a147c0909c7e4b3c6204421f369"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.3.2", shell_output("#{bin}/configcat --version")
  end
end
