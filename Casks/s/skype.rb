cask "skype" do
  version "8.105.0.214"
  sha256 "e02de249155b381a6004aa2eac8282c7463322bd0093303ea708b28bd711a27e"

  url "https://endpoint920510.azureedge.net/s4l/s4l/download/mac/Skype-#{version}.dmg",
      verified: "endpoint920510.azureedge.net/s4l/s4l/download/mac/"
  name "Skype"
  desc "Video chat, voice call and instant messaging application"
  homepage "https://www.skype.com/"

  livecheck do
    url "https://go.skype.com/mac.download"
    strategy :header_match
  end

  auto_updates true

  app "Skype.app"

  zap trash: [
    "~/Library/Address Book Plug-Ins/SkypeABCaller.bundle",
    "~/Library/Address Book Plug-Ins/SkypeABDialer.bundle",
    "~/Library/Address Book Plug-Ins/SkypeABSMS.bundle",
    "~/Library/Address Book Plug-Ins/SkypeABChatter.bundle",
    "~/Library/Application Scripts/com.skype.skype.shareagent",
    "~/Library/Application Support/Microsoft/Skype for Desktop",
    "~/Library/Application Support/Skype",
    "~/Library/Application Support/Skype Helper",
    "~/Library/Application Support/T/SkypeRT",
    "~/Library/Application Support/CrashReporter/Skype_*.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.skype.skype.sfl*",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.skype.skype",
    "~/Library/Caches/com.skype.skype",
    "~/Library/Caches/com.skype.skype.ShipIt",
    "~/Library/Containers/com.skype.skype.shareagent",
    "~/Library/Cookies/com.skype.skype.binarycookies",
    "~/Library/Group Containers/*.com.skype.skype",
    "~/Library/Preferences/com.skype.skype.plist",
    "~/Library/Preferences/com.skype.skypewifi.plist",
    "~/Library/Preferences/ByHost/com.skype.skype.*.plist",
    "~/Library/Saved Application State/com.skype.skype.savedState",
    "~/Library/WebKit/com.skype.skype",
  ]
end
