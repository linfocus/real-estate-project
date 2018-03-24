library(ggplot2)
library(dplyr)
library(DT)
resta<-read.csv('rf.csv')
resta[,1]<-sapply(resta$zipcode,toString)
shinyServer(function(input, output){
  
  output$bar <-renderPlot({
    if(input$rate=="srate"){
      ggplot(resta,aes(x=zipcode,y=successrate))+
        geom_bar(stat="identity")+
        labs(x="zipcode",y="success rate")+
        geom_hline(yintercept=0.7505,color="red",linetype="dashed")
    }
    else{
      ggplot(resta,aes(x=zipcode,y=failturerate))+
        geom_bar(stat="identity")+
        labs(x="zipcode",y="failture rate")+
        geom_hline(yintercept=0.2495,color="red",linetype="dashed")
    }
  })
  
})
