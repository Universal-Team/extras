msg	Download TWiLightMenu...\n(Release) This may take a while.
downloadRelease	https://github.com/DS-Homebrew/TWiLightMenu	TWiLightMenu\\.7z	/TWiLightMenu-release.7z
msg	Extract TWiLightMenu++...\n(Release) This may take a while.
extract	/TWiLightMenu-release.7z	_nds/	/_nds/
extract	/TWiLightMenu-release.7z	3DS - CFW users/	/
extract	/TWiLightMenu-release.7z	DSi&3DS - SD card users/	/
install	/TWiLight Menu.cia
install	/TWiLight Menu - Game booter.cia
delete	sdmc:/TWiLightMenu-release.7z
delete	sdmc:/TWiLight Menu.cia
delete	sdmc:/TWiLight Menu - Game booter.cia
