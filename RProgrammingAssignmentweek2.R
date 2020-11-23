pt<- 'C:/Users/Ravikanth/Documents/data Samples/rprog_data_specdata/specdata'

pollutantmean<-function(directory, pollutant,id){
        meanTotal<-0
        old_df<-NULL
        for(i in id)
        {
                newpath<- paste(directory,'/',sprintf("%03d",i),'.csv',sep="")
                df<-read.csv(newpath) 
                df_pollutant<-df[pollutant]
                vec<-!is.na(df[pollutant])
                new_df<- data.frame(df_pollutant[vec])
                if(!is.null(old_df))
                {
                        df<- rbind(old_df,new_df)  
                }
                else
                {
                   df<-new_df     
                }
                old_df<-df
               
        }
        mean(as.vector(t(df)))
}