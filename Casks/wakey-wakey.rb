cask "wakey-wakey" do
  version "1.0.0"
  sha256 "dfaf1a8a66e6ccb9df86bb226b7c861097c9d95d9aea6f23f474bac28dadd3c1"

  url "https://github.com/joelio/wakeywakey/releases/download/v#{version}/WakeyWakey.dmg"
  name "Wakey Wakey"
  desc "Menu bar app to prevent your Mac from sleeping using caffeinate"
  homepage "https://github.com/joelio/wakeywakey"

  app "WakeyWakey.app"

  uninstall quit: "com.joelio.WakeyWakey"

  zap trash: [
    "~/Library/Application Support/WakeyWakey",
    "~/Library/Preferences/com.joelio.WakeyWakey.plist",
    "~/Library/Caches/com.joelio.WakeyWakey",
    "~/Library/Saved Application State/com.joelio.WakeyWakey.savedState"
  ]
end
