class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.4.2"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.4.2/configcat-cli_2.4.2_osx-x64.tar.gz"
    sha256 "c1fd2f1cf1b00575f234b0293e978dfb5a2af71c01c0e142fd737ef14a128ed5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.4.2/configcat-cli_2.4.2_osx-arm64.tar.gz"
    sha256 "272449d20a893a89703918d9affdc8aa45afb4c4e3af17f37b2cb24bdfd16b16"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.4.2/configcat-cli_2.4.2_linux-x64.tar.gz"
    sha256 "af86e7132ba81519f1acf989b9018b3f1b988d43e3f01ab0ed8ae4d101fc5d42"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.4.2", shell_output("#{bin}/configcat --version")
  end
end
