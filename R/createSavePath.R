createSavePath <- function(folderName="TS_Output"){

	testPath = path.expand("~/Desktop")

	if(file.exists(testPath)){
		newDir = file.path(testPath, folderName)
		dir.create(newDir)
		savePath = newDir
		return(savePath)
		}

	else if(file.exists(testPath)){
		testPath = path.expand("~")
		newDir = file.path(testPath, folderName)
		dir.create(newDir)
		savePath = newDir
		return(savePath)
		}

	else
		print("Error: Cannot find the home folder.")
}