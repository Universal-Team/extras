downloadFromRelease("https://github.com/D0k3/GodMode9", "GodMode9.*\\.zip", "/GodMode9.zip");
extractArchive("/GodMode9.zip", "GodMode9.firm", "/luma/payloads/GodMode9.firm");
extractArchive("/GodMode9.zip", "gm9/", "/gm9/");
deleteFile("sdmc:/GodMode9.zip");