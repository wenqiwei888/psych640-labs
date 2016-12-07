set.seed(640)
y <- sapply(c(10:20), rnorm, n=100)
the_data <- data.frame(subject = 1:prod(dim(y)),
                       group = rep(LETTERS[1:ncol(y)], each = nrow(y)),
                       score = as.vector(y))

the_data <- the_data[sample(nrow(the_data)), ]

write.table(the_data,file = "data/640finaldataset.txt", quote = FALSE, row.names = FALSE, sep = "_")
