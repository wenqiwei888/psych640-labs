library(rmarkdown)

slides <- list.files(path = "labs", pattern = "*.Rmd",full.names = TRUE)

for (file in sort(slides)) {
 output_file <- render(file, quiet = TRUE, envir = new.env())  
 print(output_file)
}
