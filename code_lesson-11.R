# function to analyze bike data # 
bike_analysis = function(bike_data,station_name)
{
  dum = which (bike_data$Start.Station.Name == station_name &
                 bike_data$End.Station.Name == station_name)
  total_rides = length(dum)
  
  average_time = mean(bike_data$Trip.Duration[dum])/60 # in minutes 
  max_time = max(bike_data$Trip.Duration[dum])/60 # in minutes 
  min_time = min(bike_data$Trip.Duration[dum])/60 # in minutes
  
  output = c(total_rides,average_time,max_time,min_time)
  return(output)
}

# bike data # 
bike_data = read.csv("201703-citibike-tripdata.csv",header=T)

station_name = "Central Park S & 6 Ave"

bike_analysis(bike_data,station_name)
