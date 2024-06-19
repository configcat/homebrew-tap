class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.2.2"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.2.2/configcat-cli_2.2.2_osx-x64.tar.gz"
    sha256 "0395fa9c0f0dcc1012100a16ffd7e620dcdf481d431dc5f1a5fed0da7d42a3ed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.2.2/configcat-cli_2.2.2_osx-arm64.tar.gz"
    sha256 "672b8a897fc94fa7225b6fd77d0680f4cf1c474a7ab93504b140174f969c14ec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.2.2/configcat-cli_2.2.2_linux-x64.tar.gz"
    sha256 "d309b991ce06b958246e0680f6feff88cfc4622d692789d9153438ee71a9bac8"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.2.2", shell_output("#{bin}/configcat --version")
  end
end
