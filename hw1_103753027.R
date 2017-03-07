########################
# homework1 example
########################
#作業1 完成版 103753027 顏碩亨
f <- function(n1,n2){
  
  p <- matrix(, nrow = 1,ncol = 3, byrow = TRUE)
  
  #print(num)
  data = read.table(n1, header = TRUE, sep = ",", col.names = c("persons","weight","height","gender"))
  max_w = 0 #max of weight
  max_h = 0 #max of height 
  for(w in data[,2])
    if(w > max_w){
      max_w = round(w,digits = 2)
    }
  #print(max_w)
  for(h in data[,3])
    if(h > max_h){
      max_h = round(h,digits = 2)
    }
  #print(max_h)
  #temp = substr(n2,1,7)
  #temp = n2
  temp = strsplit(n2,".csv")[[1]]
  p[1,] <- c(temp[1],max_w,max_h)
  #p[i,] <- list(temp,max_w,max_h)
  
  
  write.table(p, file = n2, sep = ",",row.names = FALSE,col.names = list('set','weight','height'))
  return(print("done"))
}


args = commandArgs(trailingOnly=TRUE)

if (length(args)==0) {
  
  stop("USAGE: Rscript hw1_exam.R input", call.=FALSE)
}else if(args[1] == '-files'){
  f(args[2],args[4])
  
}else if(args[1] == '-out'){
  f(args[4],args[2])
  
}else {
  
}

#作業1 完成版 103753027 顏碩亨