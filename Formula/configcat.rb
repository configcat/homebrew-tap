class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.2.1"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.2.1/configcat-cli_2.2.1_osx-x64.tar.gz"
    sha256 "e6033f720489dccab4c62118440126625f94dffea7cfd8e7078d735773de18ed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.2.1/configcat-cli_2.2.1_osx-arm64.tar.gz"
    sha256 "a5e8fcd307d8897ab3f1c681222e7923acd10de09b6c612eaa47c0abb8e6ee82"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.2.1/configcat-cli_2.2.1_linux-x64.tar.gz"
    sha256 "b34aa32fc05e28a9477924fb0183dda9bd4cf095b9ec1066950b6956745d8c07"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.2.1", shell_output("#{bin}/configcat --version")
  end
end
