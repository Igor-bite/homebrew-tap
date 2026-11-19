cask "subzero" do
  version "0.4.0"
  sha256 "abf3b8acef51e1fea6c1e3b9aaa6b9fa45eeb92c166f2efcc0d83d9a9240f799"

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
    "~/Library/Containers/com.klyuzhevigor.subzero.safari",
    "~/Library/Preferences/com.klyuzhevigor.subzero.plist",
  ]
end
