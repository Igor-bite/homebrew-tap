cask "subzero" do
  version "0.1.0"
  sha256 "71d9fe9471ad4ed693c84dfe4766bdceb1f9249d8135b8757eefa90a75ce6b14"

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
