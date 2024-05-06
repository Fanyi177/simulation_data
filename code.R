setwd("E:/deskbook/indoor_exposure")
#generate simulated data for summer temperature and relative humidity
tsummer<-rnorm(n=3000,mean=28.8,sd=2)
rhsummer<-rnorm(n=3000,mean=mean1,sd=sd1)
asummer<-rnorm(n=3000,mean=0.41,sd=0.27)
#combine the data into a data table
summer<- data.table(tsummer,rhsummer,asummer)
colnames(summer)<-c("tsummer","rhsummer","asummer")
name<-paste("summer",i,sep="")
write.csv(summer, file = paste(name,".csv", sep = ""))
# generate simulated data for winter temperature and relative humidity
twinter<-rnorm(n=3000,mean=18.1,sd=4.26)
rhwinter<-rnorm(n=3000,mean=55.5,sd=10.15)
awinter<-rnorm(n=3000,mean=0.27,sd=0.13)
winter<- data.table(twinter,rhwinter,awinter)
colnames(winter)<-c("twinter","rhwinter","awinter")
name<-paste("winter",i,sep="")
write.csv(winter, file = paste(name, ".csv", sep = ""))
#generate simulated data for transitional temperature and relative humidity
ttran<-rnorm(n=3000,mean=20.16,sd=4.70)
rhtran<-rnorm(n=3000,mean=57.68,sd=15.04)
atran<-rnorm(n=3000,mean=0.36,sd=0.21)
tran<- data.table(ttran,rhtran,atran)
colnames(tran)<-c("ttran","rhtran","atran")
name<-paste("tran",i,sep="")
write.csv(tran, file = paste(name, ".csv", sep = ""))
####delete
setwd("E:/deskbook/indoor_exposure")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#combine the three seasons' data into one data table
setwd("E:/deskbook/indoor_exposure/indoor")
indoortrh<-cbind(summer,winter,tran)
name<-paste("indoortrh",i,sep="")
write.csv(indoortrh, file = paste(name, ".csv", sep = ""))
}
###bind
library(tidyverse)
df<-list.files(path='E:/deskbook/indoor_exposure/indoor')%>%
lapply(read_csv)%>%
bind_rows
dim(df)
names(df)[1]="rank"
setwd("E:/deskbook/indoor_exposure/province")
saveRDS(object = df, file = "shanghai.rds")
#shanxi#####
set.seed(777)
####delete
setwd("E:/deskbook/indoor_exposure/indoor")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#
for (i in 1:500)
{
setwd("E:/deskbook/indoor_exposure")
#generate simulated data for summer temperature and relative humidity
tsummer<-rnorm(n=3000,mean=28.28,sd=1.785)
rhsummer<-rnorm(n=3000,mean=49.38,sd=10.97)
asummer<-rnorm(n=3000,mean=0.33,sd=0.21)
#combine the data into a data table
summer<- data.table(tsummer,rhsummer,asummer)
colnames(summer)<-c("tsummer","rhsummer","asummer")
name<-paste("summer",i,sep="")
write.csv(summer, file = paste(name,".csv", sep = ""))
# generate simulated data for winter temperature and relative humidity
twinter<-rnorm(n=3000,mean=14.7,sd=1.836)
rhwinter<-rnorm(n=3000,mean=42,sd=7.908)
awinter<-rnorm(n=3000,mean=0.36,sd=0.15)
winter<- data.table(twinter,rhwinter,awinter)
colnames(winter)<-c("twinter","rhwinter","awinter")
name<-paste("winter",i,sep="")
write.csv(winter, file = paste(name, ".csv", sep = ""))
#generate simulated data for transitional temperature and relative humidity
ttran<-rnorm(n=3000,mean=11.66,sd=5.64)
rhtran<-rnorm(n=3000,mean=58.929,sd=15.409)
atran<-rnorm(n=3000,mean=0.37,sd=0.16)
tran<- data.table(ttran,rhtran,atran)
colnames(tran)<-c("ttran","rhtran","atran")
name<-paste("tran",i,sep="")
write.csv(tran, file = paste(name, ".csv", sep = ""))
####delete
setwd("E:/deskbook/indoor_exposure")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#combine the three seasons' data into one data table
setwd("E:/deskbook/indoor_exposure/indoor")
indoortrh<-cbind(summer,winter,tran)
name<-paste("indoortrh",i,sep="")
write.csv(indoortrh, file = paste(name, ".csv", sep = ""))
}
###bind
library(tidyverse)
df<-list.files(path='E:/deskbook/indoor_exposure/indoor')%>%
lapply(read_csv)%>%
bind_rows
dim(df)
names(df)[1]="rank"
setwd("E:/deskbook/indoor_exposure/province")
saveRDS(object = df, file = "shanxi.rds")
#sichuang#####
set.seed(777)
####delete
setwd("E:/deskbook/indoor_exposure/indoor")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#
sd1<-(11-7)/1.96/2
sd2<-(71.6-49.7)/1.96/2
#
for (i in 1:500)
{
setwd("E:/deskbook/indoor_exposure")
#generate simulated data for summer temperature and relative humidity
tsummer<-rnorm(n=3000,mean=26.4,sd=1.837)
rhsummer<-rnorm(n=3000,mean=70.43,sd=3.571)
asummer<-rnorm(n=3000,mean=0.41,sd=0.27)
#combine the data into a data table
summer<- data.table(tsummer,rhsummer,asummer)
colnames(summer)<-c("tsummer","rhsummer","asummer")
name<-paste("summer",i,sep="")
write.csv(summer, file = paste(name,".csv", sep = ""))
# generate simulated data for winter temperature and relative humidity
twinter<-rnorm(n=3000,mean=8.4,sd=sd1)
rhwinter<-rnorm(n=3000,mean=63.3,sd=sd2)
awinter<-rnorm(n=3000,mean=0.27,sd=0.13)
winter<- data.table(twinter,rhwinter,awinter)
colnames(winter)<-c("twinter","rhwinter","awinter")
name<-paste("winter",i,sep="")
write.csv(winter, file = paste(name, ".csv", sep = ""))
#generate simulated data for transitional temperature and relative humidity
ttran<-rnorm(n=3000,mean=17.32,sd=3.72)
rhtran<-rnorm(n=3000,mean=75.224,sd=9.077)
atran<-rnorm(n=3000,mean=0.36,sd=0.21)
tran<- data.table(ttran,rhtran,atran)
colnames(tran)<-c("ttran","rhtran","atran")
name<-paste("tran",i,sep="")
write.csv(tran, file = paste(name, ".csv", sep = ""))
####delete
setwd("E:/deskbook/indoor_exposure")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#combine the three seasons' data into one data table
setwd("E:/deskbook/indoor_exposure/indoor")
indoortrh<-cbind(summer,winter,tran)
name<-paste("indoortrh",i,sep="")
write.csv(indoortrh, file = paste(name, ".csv", sep = ""))
}
###bind
library(tidyverse)
df<-list.files(path='E:/deskbook/indoor_exposure/indoor')%>%
lapply(read_csv)%>%
bind_rows
dim(df)
names(df)[1]="rank"
setwd("E:/deskbook/indoor_exposure/province")
saveRDS(object = df, file = "sichuang.rds")
#tianjin#####
set.seed(777)
####delete
setwd("E:/deskbook/indoor_exposure/indoor")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#春季湿度
range<-c(41.5,58)
n<-4
data_shidu<-runif(n,range[1],range[2])
mean1<-mean(data_shidu)
sd1<-sd(data_shidu)
#
for (i in 1:500)
{
setwd("E:/deskbook/indoor_exposure")
#generate simulated data for summer temperature and relative humidity
tsummer<-rnorm(n=3000,mean=27.6,sd=1.7)
rhsummer<-rnorm(n=3000,mean=mean1,sd=sd1)
asummer<-rnorm(n=3000,mean=0.33,sd=0.21)
#combine the data into a data table
summer<- data.table(tsummer,rhsummer,asummer)
colnames(summer)<-c("tsummer","rhsummer","asummer")
name<-paste("summer",i,sep="")
write.csv(summer, file = paste(name,".csv", sep = ""))
# generate simulated data for winter temperature and relative humidity
twinter<-rnorm(n=3000,mean=23.1,sd=4.592)
rhwinter<-rnorm(n=3000,mean=29.1,sd=9.132)
awinter<-rnorm(n=3000,mean=0.36,sd=0.15)
winter<- data.table(twinter,rhwinter,awinter)
colnames(winter)<-c("twinter","rhwinter","awinter")
name<-paste("winter",i,sep="")
write.csv(winter, file = paste(name, ".csv", sep = ""))
#generate simulated data for transitional temperature and relative humidity
ttran<-rnorm(n=3000,mean=13.79,sd=7.04)
rhtran<-rnorm(n=3000,mean=58.744,sd=13.450)
atran<-rnorm(n=3000,mean=0.37,sd=0.16)
tran<- data.table(ttran,rhtran,atran)
colnames(tran)<-c("ttran","rhtran","atran")
name<-paste("tran",i,sep="")
write.csv(tran, file = paste(name, ".csv", sep = ""))
####delete
setwd("E:/deskbook/indoor_exposure")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#combine the three seasons' data into one data table
setwd("E:/deskbook/indoor_exposure/indoor")
indoortrh<-cbind(summer,winter,tran)
name<-paste("indoortrh",i,sep="")
write.csv(indoortrh, file = paste(name, ".csv", sep = ""))
}
###bind
library(tidyverse)
df<-list.files(path='E:/deskbook/indoor_exposure/indoor')%>%
lapply(read_csv)%>%
bind_rows
dim(df)
names(df)[1]="rank"
setwd("E:/deskbook/indoor_exposure/province")
saveRDS(object = df, file = "tianjin.rds")
#tibet#####
set.seed(777)
####delete
setwd("E:/deskbook/indoor_exposure/indoor")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#
for (i in 1:500)
{
setwd("E:/deskbook/indoor_exposure")
#generate simulated data for summer temperature and relative humidity
tsummer<-rnorm(n=3000,mean=22.2,sd=4.948)
rhsummer<-rnorm(n=3000,mean=42.6,sd=15.56)
asummer<-rnorm(n=3000,mean=0.41,sd=0.27)
#combine the data into a data table
summer<- data.table(tsummer,rhsummer,asummer)
colnames(summer)<-c("tsummer","rhsummer","asummer")
name<-paste("summer",i,sep="")
write.csv(summer, file = paste(name,".csv", sep = ""))
# generate simulated data for winter temperature and relative humidity
twinter<-rnorm(n=3000,mean=9.5,sd=6.785)
rhwinter<-rnorm(n=3000,mean=30.2,sd=17.755)
awinter<-rnorm(n=3000,mean=0.27,sd=0.13)
winter<- data.table(twinter,rhwinter,awinter)
colnames(winter)<-c("twinter","rhwinter","awinter")
name<-paste("winter",i,sep="")
write.csv(winter, file = paste(name, ".csv", sep = ""))
#generate simulated data for transitional temperature and relative humidity
ttran<-rnorm(n=3000,mean=6.49,sd=4.37)
rhtran<-rnorm(n=3000,mean=45.637,sd=11.862)
atran<-rnorm(n=3000,mean=0.36,sd=0.21)
tran<- data.table(ttran,rhtran,atran)
colnames(tran)<-c("ttran","rhtran","atran")
name<-paste("tran",i,sep="")
write.csv(tran, file = paste(name, ".csv", sep = ""))
####delete
setwd("E:/deskbook/indoor_exposure")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#combine the three seasons' data into one data table
setwd("E:/deskbook/indoor_exposure/indoor")
indoortrh<-cbind(summer,winter,tran)
name<-paste("indoortrh",i,sep="")
write.csv(indoortrh, file = paste(name, ".csv", sep = ""))
}
###bind
library(tidyverse)
df<-list.files(path='E:/deskbook/indoor_exposure/indoor')%>%
lapply(read_csv)%>%
bind_rows
dim(df)
names(df)[1]="rank"
setwd("E:/deskbook/indoor_exposure/province")
saveRDS(object = df, file = "tibet.rds")
#xinjiang#####
set.seed(777)
####delete
setwd("E:/deskbook/indoor_exposure/indoor")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#
for (i in 1:500)
{
setwd("E:/deskbook/indoor_exposure")
#generate simulated data for summer temperature and relative humidity
tsummer<-rnorm(n=3000,mean=29.1,sd=1.173)
rhsummer<-rnorm(n=3000,mean=41.5,sd=6.377)
asummer<-rnorm(n=3000,mean=0.33,sd=0.21)
#combine the data into a data table
summer<- data.table(tsummer,rhsummer,asummer)
colnames(summer)<-c("tsummer","rhsummer","asummer")
name<-paste("summer",i,sep="")
write.csv(summer, file = paste(name,".csv", sep = ""))
# generate simulated data for winter temperature and relative humidity
twinter<-rnorm(n=3000,mean=23.9,sd=1.836)
rhwinter<-rnorm(n=3000,mean=22.2,sd=5.204)
awinter<-rnorm(n=3000,mean=0.36,sd=0.15)
winter<- data.table(twinter,rhwinter,awinter)
colnames(winter)<-c("twinter","rhwinter","awinter")
name<-paste("winter",i,sep="")
write.csv(winter, file = paste(name, ".csv", sep = ""))
#generate simulated data for transitional temperature and relative humidity
ttran<-rnorm(n=3000,mean=10.77,sd=6.96)
rhtran<-rnorm(n=3000,mean=54.177,sd=12.199)
atran<-rnorm(n=3000,mean=0.37,sd=0.16)
tran<- data.table(ttran,rhtran,atran)
colnames(tran)<-c("ttran","rhtran","atran")
name<-paste("tran",i,sep="")
write.csv(tran, file = paste(name, ".csv", sep = ""))
####delete
setwd("E:/deskbook/indoor_exposure")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#combine the three seasons' data into one data table
setwd("E:/deskbook/indoor_exposure/indoor")
indoortrh<-cbind(summer,winter,tran)
name<-paste("indoortrh",i,sep="")
write.csv(indoortrh, file = paste(name, ".csv", sep = ""))
}
###bind
library(tidyverse)
df<-list.files(path='E:/deskbook/indoor_exposure/indoor')%>%
lapply(read_csv)%>%
bind_rows
dim(df)
names(df)[1]="rank"
setwd("E:/deskbook/indoor_exposure/province")
saveRDS(object = df, file = "xinjiang.rds")
#yunnan#####
set.seed(777)
####delete
setwd("E:/deskbook/indoor_exposure/indoor")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#
for (i in 1:500)
{
setwd("E:/deskbook/indoor_exposure")
#generate simulated data for summer temperature and relative humidity
tsummer<-rnorm(n=3000,mean=23.36,sd=1.194)
rhsummer<-rnorm(n=3000,mean=64.397,sd=4.687)
asummer<-rnorm(n=3000,mean=0.41,sd=0.27)
#combine the data into a data table
summer<- data.table(tsummer,rhsummer,asummer)
colnames(summer)<-c("tsummer","rhsummer","asummer")
name<-paste("summer",i,sep="")
write.csv(summer, file = paste(name,".csv", sep = ""))
# generate simulated data for winter temperature and relative humidity
twinter<-rnorm(n=3000,mean=13.4,sd=0.561)
rhwinter<-rnorm(n=3000,mean=47.4,sd=5.459)
awinter<-rnorm(n=3000,mean=0.27,sd=0.13)
winter<- data.table(twinter,rhwinter,awinter)
colnames(winter)<-c("twinter","rhwinter","awinter")
name<-paste("winter",i,sep="")
write.csv(winter, file = paste(name, ".csv", sep = ""))
#generate simulated data for transitional temperature and relative humidity
ttran<-rnorm(n=3000,mean=17.802,sd=3.345)
rhtran<-rnorm(n=3000,mean=68.444,sd=11.825)
atran<-rnorm(n=3000,mean=0.36,sd=0.21)
tran<- data.table(ttran,rhtran,atran)
colnames(tran)<-c("ttran","rhtran","atran")
name<-paste("tran",i,sep="")
write.csv(tran, file = paste(name, ".csv", sep = ""))
####delete
setwd("E:/deskbook/indoor_exposure")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#combine the three seasons' data into one data table
setwd("E:/deskbook/indoor_exposure/indoor")
indoortrh<-cbind(summer,winter,tran)
name<-paste("indoortrh",i,sep="")
write.csv(indoortrh, file = paste(name, ".csv", sep = ""))
}
###bind
library(tidyverse)
df<-list.files(path='E:/deskbook/indoor_exposure/indoor')%>%
lapply(read_csv)%>%
bind_rows
dim(df)
names(df)[1]="rank"
setwd("E:/deskbook/indoor_exposure/province")
saveRDS(object = df, file = "yunnan.rds")
#zhejiang#####
set.seed(777)
####delete
setwd("E:/deskbook/indoor_exposure/indoor")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#冬季温度
data_dongji<-rnorm(11,mean=13)
sd1<-sd(data_dongji)
#
for (i in 1:500)
{
setwd("E:/deskbook/indoor_exposure")
#generate simulated data for summer temperature and relative humidity
tsummer<-rnorm(n=3000,mean=31,sd=1.49)
rhsummer<-rnorm(n=3000,mean=68.3,sd=4.84)
asummer<-rnorm(n=3000,mean=0.41,sd=0.27)
#combine the data into a data table
summer<- data.table(tsummer,rhsummer,asummer)
colnames(summer)<-c("tsummer","rhsummer","asummer")
name<-paste("summer",i,sep="")
write.csv(summer, file = paste(name,".csv", sep = ""))
# generate simulated data for winter temperature and relative humidity
twinter<-rnorm(n=3000,mean=13,sd=sd1)
rhwinter<-rnorm(n=3000,mean=75.265,sd=4.157)
awinter<-rnorm(n=3000,mean=0.27,sd=0.13)
winter<- data.table(twinter,rhwinter,awinter)
colnames(winter)<-c("twinter","rhwinter","awinter")
name<-paste("winter",i,sep="")
write.csv(winter, file = paste(name, ".csv", sep = ""))
#generate simulated data for transitional temperature and relative humidity
ttran<-rnorm(n=3000,mean=18.076,sd=4.069)
rhtran<-rnorm(n=3000,mean=79.04,sd=4.77)
atran<-rnorm(n=3000,mean=0.36,sd=0.21)
tran<- data.table(ttran,rhtran,atran)
colnames(tran)<-c("ttran","rhtran","atran")
name<-paste("tran",i,sep="")
write.csv(tran, file = paste(name, ".csv", sep = ""))
####delete
setwd("E:/deskbook/indoor_exposure")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#combine the three seasons' data into one data table
setwd("E:/deskbook/indoor_exposure/indoor")
indoortrh<-cbind(summer,winter,tran)
name<-paste("indoortrh",i,sep="")
write.csv(indoortrh, file = paste(name, ".csv", sep = ""))
}
###bind
library(tidyverse)
df<-list.files(path='E:/deskbook/indoor_exposure/indoor')%>%
lapply(read_csv)%>%
bind_rows
dim(df)
names(df)[1]="rank"
setwd("E:/deskbook/indoor_exposure/province")
saveRDS(object = df, file = "zhejiang.rds")
#sichuan#####
df<-readRDS("E:/deskbook/indoor_exposure/province/sichuan.rds")
colnames(df)
#sichuang#####
set.seed(777)
####delete
setwd("E:/deskbook/indoor_exposure/indoor")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#
sd1<-(11-7)/1.96/2
sd2<-(71.6-49.7)/1.96/2
#
for (i in 1:500)
{
setwd("E:/deskbook/indoor_exposure")
#generate simulated data for summer temperature and relative humidity
tsummer<-rnorm(n=3000,mean=26.4,sd=1.837)
rhsummer<-rnorm(n=3000,mean=70.43,sd=3.571)
asummer<-rnorm(n=3000,mean=0.41,sd=0.27)
#combine the data into a data table
summer<- data.table(tsummer,rhsummer,asummer)
colnames(summer)<-c("tsummer","rhsummer","asummer")
name<-paste("summer",i,sep="")
write.csv(summer, file = paste(name,".csv", sep = ""))
# generate simulated data for winter temperature and relative humidity
twinter<-rnorm(n=3000,mean=8.4,sd=sd1)
rhwinter<-rnorm(n=3000,mean=63.3,sd=sd2)
awinter<-rnorm(n=3000,mean=0.27,sd=0.13)
winter<- data.table(twinter,rhwinter,awinter)
colnames(winter)<-c("twinter","rhwinter","awinter")
name<-paste("winter",i,sep="")
write.csv(winter, file = paste(name, ".csv", sep = ""))
#generate simulated data for transitional temperature and relative humidity
ttran<-rnorm(n=3000,mean=17.32,sd=3.72)
rhtran<-rnorm(n=3000,mean=75.224,sd=9.077)
atran<-rnorm(n=3000,mean=0.36,sd=0.21)
tran<- data.table(ttran,rhtran,atran)
colnames(tran)<-c("ttran","rhtran","atran")
name<-paste("tran",i,sep="")
write.csv(tran, file = paste(name, ".csv", sep = ""))
####delete
setwd("E:/deskbook/indoor_exposure")
allfile = dir()
csvfile <- grep("*.csv", allfile)
file.remove(allfile[csvfile])
#combine the three seasons' data into one data table
setwd("E:/deskbook/indoor_exposure/indoor")
indoortrh<-cbind(summer,winter,tran)
name<-paste("indoortrh",i,sep="")
write.csv(indoortrh, file = paste(name, ".csv", sep = ""))
}
###bind
library(tidyverse)
df<-list.files(path='E:/deskbook/indoor_exposure/indoor')%>%
lapply(read_csv)%>%
bind_rows
dim(df)
names(df)[1]="rank"
setwd("E:/deskbook/indoor_exposure/province")
saveRDS(object = df, file = "sichuang.rds")
