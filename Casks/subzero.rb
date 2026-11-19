cask "subzero" do
  version "0.4.1"
  sha256 "dabed19e8a34f6d567b8cb11709e2be58dfbcefac46369e66e5e86c6dfa2cb7b"

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
