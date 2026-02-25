tableaudesktop)
    name="Tableau Desktop"
    type="pkgInDmg"
    packageID="com.tableausoftware.tableaudesktop"
    if [[ $(arch) == "arm64" ]]; then
        downloadURL="https://www.tableau.com/downloads/desktop/reg-mac-arm64"
        appNewVersion=${$(curl -fsIL "$downloadURL" | sed -nE 's/.*Desktop-([0-9-]*).*/\1/p' | sed 's/-/./g; s/\.$//')}
    elif [[ $(arch) == "i386" ]]; then
        downloadURL="https://www.tableau.com/downloads/desktop/mac"
        appNewVersion=${$(curl -fsIL "$downloadURL" | sed -nE 's/.*Desktop-([0-9-]*).*/\1/p')//-/.}
    fi
    expectedTeamID="QJ4XPRK37C"
    ;;
