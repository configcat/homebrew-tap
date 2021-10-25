class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.2.2"
  license "MIT"
  bottle :unneeded
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.2.2/configcat-cli_1.2.2_osx-x64.tar.gz"
    sha256 "8a4759693f3962eb88faa664d6b36701cd4acc6a00abfdd486bb4625a564e717"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.2.2/configcat-cli_1.2.2_linux-x64.tar.gz"
    sha256 "2f703e0c056634c550a623305a994f93d960d516282e00272b483c1284c1ce92"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.2.2", shell_output("#{bin}/configcat --version")
  end
end