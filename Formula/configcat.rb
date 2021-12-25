class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.3.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.3.0/configcat-cli_1.3.0_osx-x64.tar.gz"
    sha256 "2ace5817f067c86148b4b4627bd6b56beb02a20e09f7fcd7f0b88af5ce05d748"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.3.0/configcat-cli_1.3.0_linux-x64.tar.gz"
    sha256 "80627181fe196ab704160a81ac73d3b5859cc19a5d3918dc29990e91dc02207e"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.3.0", shell_output("#{bin}/configcat --version")
  end
end
