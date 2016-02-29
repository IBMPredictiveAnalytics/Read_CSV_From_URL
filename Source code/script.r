# Install function for packages (automatic)
packages <- function(x){
  x <- as.character(match.call()[[2]])
  if (!require(x,character.only=TRUE)){
    install.packages(pkgs=x,repos="http://cran.r-project.org")
    require(x,character.only=TRUE)
  }
}

packages(RCurl)


#Function to parse csv file into Modeler Data Model  - meta data frame
getMetaData <- function (data) {
  if( is.null(dim(data)))
    stop("Invalid data received: not a data.frame")
  if (dim(data)[1]<=0) {
    print("Warning : modelerData has no line, all fieldStorage fields set to strings")
    getStorage <- function(x){return("string")}
  } else {
    getStorage <- function(x) {
      x <- unlist(x)
      res <- NULL
      #if x is a factor, typeof will return an integer so we treat the case on the side
      if(is.factor(x)) {
        res <- "string"
      } else {
        res <- switch(typeof(x),
                      integer="integer",
                      double = "real",
                      "string")
      }
      return (res)
    }
  }
  col = vector("list", dim(data)[2])
  for (i in 1:dim(data)[2]) {
    col[[i]] <- c(fieldName=names(data[i]),
                  fieldLabel="",
                  fieldStorage=getStorage(data[i]),
                  fieldMeasure="",
                  fieldFormat="",
                  fieldRole="")
  }
  mdm<-do.call(cbind,col)
  mdm<-data.frame(mdm)
  return(mdm)
}



api_url = '%%url%%'
delim <- '%%delim%%'
x <- getURL(api_url)


total.row = ifelse('%%totalrows%%' != '', as.numeric(%%totalrows%%), -1)
dat <-  read.csv(textConnection(x),header=%%headers%%,sep = delim, 
                 na.strings = "%%nastring%%",nrows = total.row, skip = %%skiprows%%,
                 strip.white= %%stripwhitespace%%, fill =%%fillrows%%)


modelerData <- dat
modelerDataModel <- getMetaData(modelerData)



