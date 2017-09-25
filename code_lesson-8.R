#read file
nyc_wifi_data = read.csv("NYC_Free_Public_Wifi_03292017.csv", header=T)

## finding NYC LINK kiosks in Manhattan ##
n = nrow(nyc_wifi_data)

linknyc_hotspots = matrix(NA,nrow=n,ncol=1)

for (i in 1:n)
{ #As per march 2017 data the provider doesnot have BETA 
  #and boro info is in the 3rd column
  if((nyc_wifi_data[i,3]=="MN") & (nyc_wifi_data[i,5]=="LinkNYC - Citybridge")) 
  {linknyc_hotspots[i,1] = 1} 
  else 
    {linknyc_hotspots[i,1] = 0}
}

sum(linknyc_hotspots)

#this is same as
length(intersect(
  which(nyc_wifi_data[,3]=="MN"), 
  which(nyc_wifi_data[,5]=="LinkNYC - Citybridge")))
