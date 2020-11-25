corr<-function(directory,threshold=0){
        df_list<-data.frame()
        cr<-0
       m_cv_list <- complete("specdata")
       final_m_cv_list <- m_cv_list[m_cv_list$nobs > threshold,]
       for (id in final_m_cv_list$id) {
               # --- Assert get a data frame as ID in $id
               df <- getdf_by_file("specdata",id)
               df<-df[complete.cases(df),] #removing any row with NA value
               # --- Assert calculate correlation between $sulfate and $nitrate
               cr <- c( cr, cor(df$sulfate, df$nitrate))
       }
       cr

 
}

getdf_by_file <- function(path,id)
{
        
        newpath<- paste(path,'/',sprintf("%03d",id),'.csv',sep="")
        df<-read.csv(newpath) 
        df
}

complete<-function(directory,id=1:332){
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