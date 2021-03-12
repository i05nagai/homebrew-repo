cask "trader-workstation-981" do
  version "981.2u"
  sha256 :no_check

  url "https://download2.interactivebrokers.com/installers/tws/latest/tws-latest-macosx-x64.dmg"
  name "Trader Workstation 981"
  desc "Trading software"
  homepage "https://www.interactivebrokers.com/"

  installer script: {
    executable: "#{staged_path}/Trader Workstation Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall quit:   "com.install4j.5889-6375-8446-2021.22",
            script: {
              executable: "/Applications/Trader Workstation/Trader Workstation Uninstaller.app/Contents/MacOS/JavaApplicationStub",
              args:       ["-q"],
            }
end
