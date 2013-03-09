setOptions <-
function(optiontable) {
	opts <- list()
	for (i in 1:nrow(optiontable)) {
		o <- optiontable$value[i]
		if(!is.na(suppressWarnings(as.numeric(as.character(o))))) {
	        o <- as.numeric(o)
		} else {
			o <- as.character(o)
		}
		opts[[as.character(optiontable$option[i])]]<-o
	}
	options(opts)
}

