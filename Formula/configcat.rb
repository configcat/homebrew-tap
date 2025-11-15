class Configcat < Formula
  desc "The ConfigCat Command Line Interface allows you to interact with the ConfigCat Management API via the command line. It supports most functionality found on the ConfigCat Dashboard. You can manage ConfigCat resources like Feature Flags, Targeting / Percentage rules, Products, Configs, Environments, and more."
  homepage "https://configcat.com"
  version "2.5.2"
  license "MIT"
  
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.5.2/configcat-cli_2.5.2_osx-x64.tar.gz"
    sha256 "44e3173aa4c9657f78833e896d3b5b8a05c3f03076959949c5dd9cee48f4ca85"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/configcat/cli/releases/download/v2.5.2/configcat-cli_2.5.2_osx-arm64.tar.gz"
    sha256 "3178956d10dcf7a61d9279a2dd7f64ddfe52a7d300f9d0c5c6b896acc79c0a3d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/configcat/cli/releases/download/v2.5.2/configcat-cli_2.5.2_linux-x64.tar.gz"
    sha256 "64e1d7fd2171027d0e2de1d400fc8347d593559230f065c59d5638be924cb44a"
  end
  
  def install
    bin.install "configcat"
  end

  test do
    assert_match "2.5.2", shell_output("#{bin}/configcat --version")
  end
end
