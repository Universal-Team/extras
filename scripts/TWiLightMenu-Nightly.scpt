msg	Download TWiLightMenu++...\n(Nightly)
downloadFile	https://github.com/TWLBot/Builds/blob/master/TWiLightMenu.7z?raw=true	/TWiLightMenu-nightly.7z
msg	Extract TWiLightMenu++...\n(Nightly)
extract	/TWiLightMenu-nightly.7z	TWiLightMenu/_nds/	/_nds/
extract	/TWiLightMenu-nightly.7z	3DS - CFW users/	/
install	/TWiLight Menu - Game booter.cia
delete	sdmc:/TWiLightMenu-nightly.7z
delete	sdmc:/TWiLight Menu.cia
delete	sdmc:/TWiLight Menu - Game booter.cia
