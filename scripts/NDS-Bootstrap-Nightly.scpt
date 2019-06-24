downloadToFile("https://github.com/TWLBot/Builds/blob/master/nds-bootstrap.7z?raw=true", "/nds-bootstrap-nightly.7z");
extractArchive("/nds-bootstrap-nightly.7z", "nds-bootstrap/", "/_nds/");
deleteFile("sdmc:/nds-bootstrap-nightly.7z");