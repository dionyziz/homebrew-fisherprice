class BingWallpaperOsx < Formula
  homepage "https://github.com/gtklocker/bing-wallpaper-osx"
  url "https://github.com/gtklocker/bing-wallpaper-osx/archive/0.0.3.tar.gz"
  sha256 "ec03067261e96e4b964c47c508ed770c2bed9a0da0ccd935b9b7ebdb72fcdb2d"

  def install
    bin.install "bing-wallpaper-osx"
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>RunAtLoad</key>
        <true/>
        <key>StartInterval</key>
        <integer>43200</integer>
        <key>KeepAlive</key>
        <false/>
        <key>ProgramArguments</key>
        <array>
            <string>#{opt_bin}/bing-wallpaper-osx</string>
        </array>
        <key>WorkingDirectory</key>
        <string>#{HOMEBREW_PREFIX}</string>
      </dict>
    </plist>
    EOS
  end
end
