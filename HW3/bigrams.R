pir = readLines("100000.txt", warn = FALSE)
digits = as.numeric(unlist(strsplit(pir,"")))

bis <- vector("list", 99999)
i <- 1
while (i < length(digits)) {
  bis[[i]] <- paste(digits[[i]], digits[[i+1]], sep = "")
  i <- i + 1
}

bis <- as.numeric(unlist(bis))
print(bis[1:10])

biTable <- table(bis)
print(biTable)

hist(biTable)