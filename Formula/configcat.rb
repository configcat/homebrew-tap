class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.3.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.3.1/configcat-cli_1.3.1_osx-x64.tar.gz"
    sha256 "b26ff709a31438cd5b23cece2fe3c8f288c8aff483b61cbcaf412686838168c9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.3.1/configcat-cli_1.3.1_linux-x64.tar.gz"
    sha256 "2ba624259420a2c0c19cb063073dbcb05c64799ec234e9025f31c2160e67b67e"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.3.1", shell_output("#{bin}/configcat --version")
  end
end
