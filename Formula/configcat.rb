class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.6.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.6.1/configcat-cli_1.6.1_osx-x64.tar.gz"
    sha256 "bd9a202eabe86dddc2badfa09e92328921e6e8abaf760752dfc4b7d4db558642"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v1.6.1/configcat-cli_1.6.1_osx-arm64.tar.gz"
    sha256 "df121700ba519920d34198010bfc40980dbad83d660de5f8a8f2ffcefe3bc73b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.6.1/configcat-cli_1.6.1_linux-x64.tar.gz"
    sha256 "f3dad045450045eb1ed7a37b362cfab78ea1888f56cdcac56124d24860b1e955"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.6.1", shell_output("#{bin}/configcat --version")
  end
end
