# Read the datafile #
naturalgas_data = read.csv("Natural_Gas_Consumption_by_ZIP_Code_-_2010.csv",header=TRUE)

Residential = naturalgas_data$Consumption..GJ.[
  which(naturalgas_data$Building.type..service.class == 
          "Large residential")]
Commercial = naturalgas_data$Consumption..GJ.[
  which(naturalgas_data$Building.type..service.class 
        == "Commercial")]
Institutional = naturalgas_data$Consumption..GJ.[
  which(naturalgas_data$Building.type..service.class ==
          "Institutional")]
stripchart(Residential,font=2,
           pch=21, #shapes of the dots
           cex=0.5, #size of the dots
           xlab="Consumption in GJ",font.lab=2)

boxplot(Residential, horizontal=TRUE, col="grey",add=T)

# histogram #
hist(Residential,font=2,font.lab=2,xlab="Consumption in GJ",col="grey")

# average #
mean(Residential,na.rm=T)

# median #
median(Residential,na.rm=T)

# variance and standard deviation #
var(Residential,na.rm=T)
sd(Residential,na.rm=T)

# skewness #
library(moments)
skewness(Residential,na.rm=T)

# quantiles and summary #
quantile(Residential,na.rm=T)
summary(Residential)

# comparing the data # 
all_data = cbind(Residential,Commercial, Institutional)
boxplot(all_data,horizontal=T)
