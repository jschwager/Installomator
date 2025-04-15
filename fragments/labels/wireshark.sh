wireshark)
    name="Wireshark"
    type="dmg"
    if [[ $(arch) == i386 ]]; then
      downloadURL=$(curl -fs 'https://www.wireshark.org/download.html' |  xmllint --html --xpath '(//details[1]//a[contains(text(), "macOS Intel Disk Image")]/@href)[1]' - 2>/dev/null |  sed -n 's/.*href="\([^"]*\).*/\1/p')
    elif [[ $(arch) == arm64 ]]; then
      downloadURL=$(curl -fs 'https://www.wireshark.org/download.html' |  xmllint --html --xpath '(//details[1]//a[contains(text(), "macOS Arm Disk Image")]/@href)[1]' - 2>/dev/null |  sed -n 's/.*href="\([^"]*\).*/\1/p')
    fi
    appNewVersion=$(curl -fs 'https://www.wireshark.org/download.html' | grep -oE 'Stable Release: \d(\.\d)+' | grep -oE '\d(\.\d)+' | head -n 1)
    appName="Wireshark.app"
    expectedTeamID="7Z6EMTD2C6"
    ;;
