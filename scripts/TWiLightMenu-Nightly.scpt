downloadToFile("https://github.com/TWLBot/Builds/blob/master/TWiLightMenu.7z?raw=true", "/TWiLightMenu-nightly.7z");
extractArchive("/TWiLightMenu-nightly.7z", "TWiLightMenu/_nds/", "/_nds/");
extractArchive("/TWiLightMenu-nightly.7z", "3DS - CFW users/", "/");
installCia("/TWiLight Menu - Game booter.cia");
deleteFile("sdmc:/TWiLightMenu-nightly.7z");
deleteFile("sdmc:/TWiLight Menu.cia");
deleteFile("sdmc:/TWiLight Menu - Game booter.cia");