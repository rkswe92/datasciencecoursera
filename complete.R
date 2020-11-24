complete<-function(directory,id){
        df_list<-data.frame()
        for(i in id)
        {
                newpath<- paste(directory,'/',sprintf("%03d",i),'.csv',sep="")
                df<-read.csv(newpath)
                in_df<-df[complete.cases(df),] #removing any row with NA value
                data_vector<-cbind(i,nrow(in_df)) # I want the values in a horizontal way hence column bind
                df_list<- rbind(df_list,data_vector) # from second occurrence add to row to the exisiting df
        }
        names(df_list)<-c("id","nobs")
        df_list
}