class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.1.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.1.0/configcat-cli_2.1.0_osx-x64.tar.gz"
    sha256 "4c0e3038be24e3a2e71f158b276cc163a4df7736f763d6b60a4a03cabc50e661"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.1.0/configcat-cli_2.1.0_osx-arm64.tar.gz"
    sha256 "2970a12b11637f309ba3aeb43b805cee08f305d6f869afb05d8108e5a88786ef"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.1.0/configcat-cli_2.1.0_linux-x64.tar.gz"
    sha256 "03d55bac0bc5afd000f45eb7d27c0bf732a8249b3cb978d8909aa5de3b442e83"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.1.0", shell_output("#{bin}/configcat --version")
  end
end
