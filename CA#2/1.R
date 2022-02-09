#1
countries <- read.csv(file.choose(), header = TRUE, na.string=c(NA))
country <- c(countries$Country)
region <- c(countries$Region)
population <- c(countries$Population)
area  <- c(countries$Area)
density <- c(countries$Pop.)
coastline  <- c(countries$Coastline)
net_migration <- c(countries$Net)
infant_mortality <- c(countries$Infant)
GDP_  <- c(countries$GDP)
literacy <- c(countries$Literacy)
phones  <- c(countries$Phones)
arable  <- c(countries$Arable)
crops  <- c(countries$Crops)
other  <- c(countries$Other)
climate <- c(countries$Climate)
birthrate <- c(countries$Birthrate)
deathrate <- c(countries$Deathrate)
agriculture <- c(countries$Agriculture)
industry <- c(countries$Industry)
service <- c(countries$Service)

mydata <- data.frame(population,area,density,coastline,net_migration,infant_mortality,
                     GDP_,literacy,phones,arable,crops,other,climate,birthrate,
                     deathrate,agriculture,industry,service)
#mydata[is.na(mydata)] <- NA
#3
cor_data <- cor(mydata, use = "pairwise.complete.obs")

cor_data
round(cor_data,2)
#4
plot(agriculture,birthrate)
#5
agriculture[is.na(agriculture)] <- birthrate[is.na(agriculture)]

