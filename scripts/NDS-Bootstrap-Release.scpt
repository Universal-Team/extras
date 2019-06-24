downloadFromRelease("https://github.com/ahezard/nds-bootstrap", "nds-bootstrap\\.zip", "/nds-bootstrap-release.zip");
extractArchive("/nds-bootstrap-release.zip", "/", "/_nds/");
deleteFile("sdmc:/nds-bootstrap-release.zip");