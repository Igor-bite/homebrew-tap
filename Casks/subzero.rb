cask "subzero" do
  version "0.2.0"
  sha256 "6460083bd93730db41b77e674c0e707a931f79086e2a40dc65404b1f67c7ca2a"

  url "https://github.com/Igor-bite/subzero/releases/download/v#{version}/Subzero-#{version}.zip"
  name "Subzero"
  desc "Menu bar kill switch that freezes apps when your IP leaves allowed countries"
  homepage "https://github.com/Igor-bite/subzero"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Subzero.app"

  uninstall quit: "com.klyuzhevigor.subzero"

  zap trash: [
    "~/Library/Application Support/Subzero",
    "~/Library/Preferences/com.klyuzhevigor.subzero.plist",
  ]
end
