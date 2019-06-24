downloadFromRelease("https://github.com/AuroraWright/Luma3DS", "Luma3DS.*\\.7z", "/Luma3DS.7z");
extractArchive("/Luma3DS.7z", "boot.firm", "/boot.firm");
deleteFile("sdmc:/Luma3DS.7z");