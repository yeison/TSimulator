createSavePath <- function(folderName="TS_Output"){

	desktop = path.expand("~/Desktop")
	home = path.expand("~")

	if(file.exists(desktop)){
		return(uniquePath(desktop, folderName))
	}

	else if(file.exists(home, )){
		return(uniquePath(home, folderName))
	}

	else
		print("Error: Cannot find the home folder.")
}

uniquePath <- function(testPath, folderName){
	
	testPath = paste(testPath, folderName, sep="/")
	if(file.exists(testPath)){
		savePath = subdate(testPath)
	}
	
	else{
		newDir = file.path(testPath, folderName)
		dir.create(newDir)
		savePath = subdate(newDir)
	}

	savePath = paste(savePath, "RData", sep=".")
	return(savePath)
	
}

subdate <- function(path){
	the_date = gsub(":", ".", date())
	subbed = paste(path, gsub(" ", "_", the_date), sep="/")
	return(subbed)
}