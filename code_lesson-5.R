# read file
nyc_temp = read.table("nyc_temperature.txt", header=TRUE)

#find warm days in feb
feb_days = which(nyc_temp[,2] == 2)
warm_days = which(nyc_temp[,7] >= 50)
feb_warm_days = intersect(feb, warm_days)

#list cold saturdays
saturday = which(nyc_temp[,4] == "Saturday")
cold_days = which(nyc_temp[,7] <= 25)
percent_cold_sat_days = length(intersect(saturday, cold_days)) / 
  length(saturday)
