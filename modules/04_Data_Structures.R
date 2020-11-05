# Module 4 - Data Structures

# create and save cats data.frame
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))

write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)
