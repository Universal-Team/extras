downloadFromRelease("https://github.com/DS-Homebrew/TWiLightMenu", "TWiLightMenu\\.7z", "/TWiLightMenu-release.7z");
extractArchive("/TWiLightMenu-release.7z", "_nds/", "/_nds/");
extractArchive("/TWiLightMenu-release.7z", "3DS - CFW users/", "/");
extractArchive("/TWiLightMenu-release.7z", "DSi&3DS - SD card users/", "/");
installCia("/TWiLight Menu.cia");
installCia("/TWiLight Menu - Game booter.cia");
deleteFile("sdmc:/TWiLightMenu-release.7z");
deleteFile("sdmc:/TWiLight Menu.cia");
deleteFile("sdmc:/TWiLight Menu - Game booter.cia");