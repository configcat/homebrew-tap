class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.4.0"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.4.0/configcat-cli_2.4.0_osx-x64.tar.gz"
    sha256 "28851a69cac8618b0f901aa429d25e41a9dc5361c25ff053ab3a39d65328cf60"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.4.0/configcat-cli_2.4.0_osx-arm64.tar.gz"
    sha256 "dbf71de3e3a56c0c80eb046cfca93432e79ed8a529c750c74613d07049d92d2f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.4.0/configcat-cli_2.4.0_linux-x64.tar.gz"
    sha256 "824505ef858c441bd7cd06c28ce7e23434f5d2c865d129f22af2d6fff785a3af"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.4.0", shell_output("#{bin}/configcat --version")
  end
end
