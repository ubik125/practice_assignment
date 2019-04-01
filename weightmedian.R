weightmedian <- function(directory, day) {
  files_list <- list.files(directory, full.names = T) #per creare la lista dei files
  dat <- data.frame()
  for (i in 1:5) {
    #combina i dati dei csv in un unico file
    dat <- rbind(dat, read.csv(files_full[i]))
  }
  dat_subset <- dat[which(dat[, "Day"] == day), ] #subsetta le righe che corrispondono al day scelto
  median(dat_subset[, "Weight"], na.rm = T) #calcola la mediana nel giorno scelto
}