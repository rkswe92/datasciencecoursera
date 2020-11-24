pollutantmean<-function(directory, pollutant,id){
        meanTotal<-0
        old_df<-NULL
        for(i in id)
        {
                newpath<- paste(directory,'/',sprintf("%03d",i),'.csv',sep="")
                df<-read.csv(newpath) 
                df_pollutant<-df[pollutant]
                vec<-!is.na(df[pollutant])
                new_df<- df_pollutant[vec]
                if(!is.null(old_df)) # for the first time dont join
                {
                        df<- c(old_df,new_df)  # joining old and new pollutant values
                }
                else
                {
                        df<-new_df     
                }
                old_df<-df
                
        }
        mean(df) #applied only on vectors cannot apply on data frames
}

complete<-function(directory,id){
        df_list<-NULL
        for(i in id)
        {
                newpath<- paste(directory,'/',sprintf("%03d",i),'.csv',sep="")
                df<-read.csv(newpath)
                in_df<-df[complete.cases(df),] #removing any row with NA value
                data_vector<-cbind(i,nrow(in_df)) # I want the values in a horizontal way hence column bind
                if(is.null(df_list))
                {
                        df_list<-data.frame(data_vector) #first time
                }
                else
                {
                        df_list<- rbind(df_list,data_vector) # from second occurrence add to row to the exisiting df
                }
        }
        names(df_list)<-c("id","nobs") #adding column names
        df_list
}