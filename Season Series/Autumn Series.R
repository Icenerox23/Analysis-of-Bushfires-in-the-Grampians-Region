dir_in_grampians = "C:/Analytics Project/" #your current directory in filesystem

grampians_FFDI = as.numeric(read.csv(paste0(dir_in_grampians,"grampians_monthly.csv"))[,2])

#MAM season

curr_year = 1951

curr_pos = 3

MAM_time_series = vector()
yr_series = vector()

while(curr_pos<length(grampians_FFDI))
{
  MAM_time_series = c(MAM_time_series,mean(grampians_FFDI[curr_pos:(curr_pos+2)]))
  yr_series = c(yr_series,curr_year)
  
  curr_year = curr_year + 1
  
  curr_pos = curr_pos + 12
  
}

grampians_FFDI = cbind(yr_series,MAM_time_series)
colnames(grampians_FFDI) <- c("Year","MAM_FFDI")

write.csv(grampians_FFDI, paste0(dir_in_grampians,"grampians_FFDI_MAM.csv"),row.names = FALSE)

jpeg(paste0(dir_in_grampians,"MAM_time_series.jpeg"),width = 6000, height = 3000, quality = 100, res = 600)

plot(y=MAM_time_series,x = yr_series, type = "l", xlab = "Year",ylab = "FFDI", col = "red",main = "MAM time series") #plot timeseries
abline(lm(MAM_time_series ~ yr_series),col = "blue") #plot trendline
mtext(paste0("Slope = ",lm(MAM_time_series ~ yr_series)[["coefficients"]][["yr_series"]]), side = 4) #slope

model = lm(MAM_time_series~yr_series)

summary(model)

dev.off()

ENSO_years = as.numeric(read.csv(paste0(dir_in_grampians,"ENSO.csv"))[,1])
ENSO_MAM = as.numeric(read.csv(paste0(dir_in_grampians,"ENSO.csv"))[,2])

El_nino_MAM_FFDI = vector()
La_Nina_MAM_FFDI = vector()
Neutral_MAM_FFDI= vector()

for (curr_pos in 2:length(ENSO_MAM)) {
  if(ENSO_MAM[curr_pos]>0.5)
  {
    El_nino_MAM_FFDI = rbind(El_nino_MAM_FFDI,grampians_FFDI[curr_pos-1,])
  }
  else if(-0.5>ENSO_MAM[curr_pos])
  {
    La_Nina_MAM_FFDI = rbind(La_Nina_MAM_FFDI,grampians_FFDI[curr_pos-1,])
  }
  else
  {
    Neutral_MAM_FFDI = rbind(Neutral_MAM_FFDI,grampians_FFDI[curr_pos-1,])
  }
}


write.csv(El_nino_MAM_FFDI, paste0(dir_in_grampians,"grampians_El_nino_MAM_FFDI.csv"),row.names = FALSE)
write.csv(La_Nina_MAM_FFDI, paste0(dir_in_grampians,"grampians_La_Nina_MAM_FFDI.csv"),row.names = FALSE)
write.csv(Neutral_MAM_FFDI, paste0(dir_in_grampians,"grampians_Neutral_MAM_FFDI.csv"),row.names = FALSE)

max_length = max(length(El_nino_MAM_FFDI[,2]),length(La_Nina_MAM_FFDI[,2]),length(Neutral_MAM_FFDI[,2]))
El_nino_MAM_FFDI = El_nino_MAM_FFDI[,2]
La_Nina_MAM_FFDI = La_Nina_MAM_FFDI[,2]
Neutral_MAM_FFDI = Neutral_MAM_FFDI[,2]
length(El_nino_MAM_FFDI) <- max_length
length(La_Nina_MAM_FFDI) <- max_length
length(Neutral_MAM_FFDI) <- max_length


jpeg(paste0(dir_in_grampians,"MAM_boxplots.jpeg"),width = 3000, height = 3000, quality = 100, res = 600)

#boxplots
FFDI_data = cbind(El_nino_MAM_FFDI,La_Nina_MAM_FFDI, La_Nina_MAM_FFDI)
FFDI_data_mean = colMeans(FFDI_data, na.rm=TRUE)
boxplot(FFDI_data,col=c("red","blue","darkgray"),ylab = "FFDI",
        main = "MAM FFDI segregated by ENSO phases", cex.main = 1.35,
        outcol = c("red","blue","darkgray"),lty = c(1,1,1),lwd=0.7,pch = c(16,16,16),
        cex.lab = 0.9, cex.axis = 1.0, boxwex = .5,
        names = c("El Nino", "La Nina", "Neutral"))
points(FFDI_data_mean,pch = 20, cex = 2, col = "white")

dev.off()


