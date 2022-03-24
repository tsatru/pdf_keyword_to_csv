path = "~/Escritorio/uniiquim_scifinder/"
out.file<-""
file.names <- dir(path, pattern =".pdf")
for(i in 1:length(file.names)){
  #file <- read.table(file.names[i],header=TRUE, sep=";", stringsAsFactors=FALSE)
  #out.file <- rbind(out.file, file)
  pdf_file <- i
  txt <- pdf_text(pdf_file)
  crn <- keyword_search(txt, keyword = 'CAS Registry Number')
}
row.names = FALSE, qmethod = "double",fileEncoding="windows-1252")

mydf <- as.data.frame(crn$line_text)
write.table(crn[0:4], file = "Substance_1.csv",sep=",", 
            row.names = TRUE, qmethod = "double",fileEncoding="utf-8")



i <- data.frame()
for (i in 1:length(All_files))
{
  txt <- pdf_text(All_files[i])
  
  file_name <- All_files[i]

  FirstPara <- unlist(strsplit(txt[1], split=c("\r\n", "\r", "\n")))[1+20]

  
  df <- rbind(df, cbind(file_name, FirstPara, SecondPara))
}
