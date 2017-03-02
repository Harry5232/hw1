########################
# homework1 example
########################
#作業1 完成版 103753027 顏碩亨

args = commandArgs(trailingOnly=TRUE)

if (length(args)==0) {
  stop("USAGE: Rscript hw1_exam.R input", call.=FALSE)
} else {
  p <- matrix(, nrow = length(args)-1,ncol = 3, byrow = TRUE)
  num <- 1 
  for(i in c(length(args)-1)){
    #print(num)
    data = read.table(args[i], header = TRUE, sep = ",", col.names = c("persons","weight","height","gender"))
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
    temp = substr(args[i],1,6)
    p[num,] <- c(temp,max_w,max_h)
    num = num +1 
    
  } 
  
  write.table(p, file = args[2], sep = ",",row.names = FALSE,col.names = list('set','weight','height'))
  
}

#作業1 完成版 103753027 顏碩亨