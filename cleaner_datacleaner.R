library(tidyverse)
path = "C:/Users/Client/OneDrive/Documents/Datathon/2017-18-crdc-data/2017-18 Public-Use Files/Data/SCH/CRDC/CSV/"
ext = ".csv"
new_path = "C:/Users/Client/OneDrive/Documents/Datathon/clean data/"


file_list2 = data.frame(name = c('Advanced_math','Advanced_Place','AlgebraI','AlgebraII','Bio','Calc','Chem',
                                 'CorpPunish','CreditRecover','DualEnroll','Enroll','Expulsion','Geometry','GiftandTalent','Harrassment',
                                 'IB','JusticeFacilities','Offenses','Physics','Referrals','Restraint','Retention','SATandACT','SchoolChar',
                                 'SchoolExpend','SchoolSupport','SingleSexAthelete','SingelSexClasses', 'Suspensions','Transfers'))


file_list = data.frame(name = c('Advanced Mathematics','Advanced Placement','Algebra I','Algebra II',
                                'Biology','Calculus','Chemistry','Corporal Punishment','Credit Recovery','Dual Enrollment',
                                'Enrollment','Expulsions','Geometry','Gifted and Talented','Harassment and Bullying','International Baccalaureate',
                                'Justice Facilities','Offenses','Physics','Referrals and Arrests','Restraint and Seclusion','Retention',
                                'SAT and ACT','School Characteristics','School Expenditures','School Support','Single-sex Athletics',
                                'Single-sex Classes','Suspensions','Transfers'))


for (p in 1:30){
  file_list$full[p] = paste0(path,file_list$name[p],ext)
  file_list$newname[p] = file_list2$name[p]
  file_list$full_back[p] = paste0(new_path,file_list$newname[p],ext)
  
}

alldat = list()

for (p in 1:30){
  alldat[[p]] = read.csv(file_list$full[p])
}

for (p in 1:30){
  filename[,] = replace(filename[,], filename[,] <0,0)
  filename[,] = replace(filename[,], filename[,] == "Yes",1)
  filename[,] = replace(filename[,], filename[,] == "No",0)
  alldat[[i]] = filename
}

for(p in 1:30){
  write.csv(alldat[[p]], file_list$full_back[p], row.names=TRUE)
}


