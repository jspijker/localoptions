readOptions <-
function(file) {

	if(!file.exists(file)) {
	   msg<-paste("option file",file,"not found")
	   stop(msg)
	}
					
	o <- read.table(file,col.name=c("option","value"),stringsAsFactors=FALSE)
	setOptions(o)
	invisible(o)
}

