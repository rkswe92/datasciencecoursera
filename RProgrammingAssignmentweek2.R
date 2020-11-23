pt<- 'C:/Users/Ravikanth/Documents/data Samples/rprog_data_specdata/specdata'

pollutantmean<-function(directory, pollutant,id){
                  meanTotal<-0
                  for(i in id)
                  {
                          newpath<- paste(directory,'/',sprintf("%03d",i),'.csv',sep="")
                          df<-read.csv(newpath) 
                          df_pollutant<-df[pollutant]
                          df<-df_pollutant[!is.na(df_pollutant)]
                          meanTotal<- meanTotal+mean(df)
                  }
                 meanTotal
        
}