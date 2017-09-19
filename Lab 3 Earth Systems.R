library('readxl')
db= read_excel('Vostok_Data.xlsx', col_names= TRUE)
head(db)
db = db [2:nrow(db), ]
attach (db)
plot(depth, ice_age, main= "Vostok Ice Core", xlab= "Depth pf Core (m)", ylab= "age (ka)", col= "red", pch = 19, cex = .25)
points(depth, gas_age, col= "blue", cex = .25)
legend("topleft", col= c("red", "blue"), c("ice", "gas"), pch=19, bty="n")
par(mar= c(5, 5, 2, 5))
par(new=TRUE)
with (db, plot(ice_age, CO2, type="l", col="blue", ylab= NA, yaxt= "n", xlab = NA))
axis(side=4)
mtext(side=4, line=3, "Methane (ppb)")
legend ("topleft", col=c("red", "blue"), c("CO2", "CH4"), pch= 19, bty="n")