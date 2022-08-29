class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "1.5.3"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.5.3/configcat-cli_1.5.3_osx-x64.tar.gz"
    sha256 "66e8e7a89dafa5d2bccf7bd11b8336c8f2d4d3fabb40a1710bb77e08d6d5cbb4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v1.5.3/configcat-cli_1.5.3_osx-arm64.tar.gz"
    sha256 "22e0c9d9380220f5d13abf1a169388459c49119fdf8f09933adbf6835a605583"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v1.5.3/configcat-cli_1.5.3_linux-x64.tar.gz"
    sha256 "24eecdfd4297c8768886f6b45147b4a6a6710be6bcb8ff040f55399dce8be4ab"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "1.5.3", shell_output("#{bin}/configcat --version")
  end
end
