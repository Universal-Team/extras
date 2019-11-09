#include <dirent.h>
#include <stdio.h>
#include <sys/types.h>
#include <string>
#include <vector>

#include "json.hpp"

bool nameEndsWith(const std::string &name, const std::vector<std::string> &extensionList) {
	if(name.substr(0, 2) == "._") return false;

	if(name.size() == 0) return false;

	if(extensionList.size() == 0) return true;

	for(int i = 0; i <(int)extensionList.size(); i++) {
		const std::string ext = extensionList.at(i);
		if(strcasecmp(name.c_str() + name.size() - ext.size(), ext.c_str()) == 0) return true;
	}
	return false;
}
 
std::vector<std::string> getDirectoryContents(const std::string &name, const std::vector<std::string> &extensionList) {
	std::vector<std::string> dirContents;
	DIR* pdir = opendir(name.c_str());
	struct dirent *pent;
	while ((pent = readdir(pdir)) != NULL) {
		if(nameEndsWith(pent->d_name, extensionList))
			dirContents.push_back(pent->d_name);
	}
	closedir(pdir);

	return dirContents;
}

std::string replaceSpaces(std::string string) {
	for(int i=0;i<string.length();i++) {
		if(string[i] == ' ')	string = string.substr(0, i) + "%20" + string.substr(i+1);
	}
	return string;
}

nlohmann::json readInfo(const std::string &path) {
	nlohmann::json in, out;
	FILE* file = fopen(path.c_str(), "r");
	if(!file) {
		fclose(file);
		return out;
	}
	in = nlohmann::json::parse(file, nullptr, false);
	fclose(file);

	if(in.contains("info")) {
		if(in["info"].contains("title") && in["info"]["title"].is_string())	out["title"] = in["info"]["title"];
		if(in["info"].contains("author") && in["info"]["author"].is_string())	out["author"] = in["info"]["author"];
		if(in["info"].contains("shortDesc") && in["info"]["shortDesc"].is_string())	out["shortDesc"] = in["info"]["shortDesc"];
		if(in["info"].contains("version") && in["info"]["version"].is_number())	out["version"] = in["info"]["version"];
		if(in["info"].contains("revision") && in["info"]["revision"].is_number())	out["revision"] = in["info"]["revision"];
	}
	out["url"] = replaceSpaces("https://github.com/Universal-Team/extras/raw/scripts"+path.substr(path.find_last_of("/")));

	return out;
}

int main(int argc, char *argv[]) {
	if(argc < 2) {
		printf("Pass in the path to the scripts folder\n");
		return 1;
	}
	std::string scriptsPath = argv[1];
	std::vector<std::string> dirContents = getDirectoryContents(scriptsPath, {"json"});
	nlohmann::json json;

	for(uint i=0;i<dirContents.size();i++) {
		printf("| %s\n", dirContents[i].c_str());
		json[i] = readInfo(scriptsPath+"/"+dirContents[i]);
	}

	FILE* file = fopen("scriptInfo.json", "w");
	if(file)	fwrite(json.dump().c_str(), 1, json.dump().size(), file);
	fclose(file);

	return 0;
}
