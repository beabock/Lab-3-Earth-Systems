---
  title: 'EES 2510 Earth Systems Lab #3'
author: "Beatrice Rodewald"
date: 'Lab: Wed. Sept. 20'
output:
  pdf_document: default
html_document: default
word_document: default
subtitle: 'Ice Core Data'
---

  
library('readxl')
db= read_excel('Vostok_Data.xlsx', col_names= TRUE)
head(db)
db = db [2:nrow(db), ]
attach (db)
plot(depth, ice_age, main= "Vostok Ice Core", xlab= "Depth of Core (m)", ylab= "age (ka)", col= "red", pch = 19, cex = .25)
points(depth, gas_age, col= "blue", cex = .25)
legend("topleft", col= c("red", "blue"), c("Ice", "Gas"), pch=19, bty="n")

#dev.new(width=5, height=5)
plot(ice_age, CO2, main= "Vostok Ice Core", xlab= "Depth of Core (m)", ylab= "age (ka)", type= "l", col= "red", pch = 19, cex = .25)
par(mar= c(5, 5, 2, 5))
par(new=TRUE)
with (db, plot(ice_age, CH4, type="l", col="blue", ylab= NA, yaxt= "n", xlab = NA))
axis(side=4)
mtext(side=4, line=3, "Methane (ppb)")
legend("topleft", col=c("red", "blue"), c("CO2", "CH4"), pch=19, bty="n")

