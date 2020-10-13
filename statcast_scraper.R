library(baseballr)

#for loop allows you to select years by entering the last digit of the year. Statcast data only goes back to around
# 2012
for(i in 7:8){
  date328407 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 03, 28, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 04, 07, sep = "-"), player_type = 'batter')
  
  date408414 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 04, 08, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 04, 14, sep = "-"), player_type = 'batter')
  
  date415421 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 04, 15, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 04, 21, sep = "-"), player_type = 'batter')
  
  date422428 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 04, 22, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 04, 28, sep = "-"), player_type = 'batter')
  
  date429505 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 04, 29, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 05, 05, sep = "-"), player_type = 'batter')
  
  date506512 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 05, 06, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 05, 12, sep = "-"), player_type = 'batter')
  
  date513519 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 05, 13, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 05, 17, sep = "-"), player_type = 'batter')
  
  date520526 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 05, 20, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 05, 26, sep = "-"), player_type = 'batter')
  
  date527602 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 05, 27, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 06, 02, sep = "-"), player_type = 'batter')
  
  date603609 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 06, 03, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 06, 09, sep = "-"), player_type = 'batter')
  
  date610616 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 06, 10, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 06, 16, sep = "-"), player_type = 'batter')
  
  date617623 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 06, 17, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 06, 23, sep = "-"), player_type = 'batter')
  
  date624630 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 06, 24, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 06, 30, sep = "-"), player_type = 'batter')
  
  date701707 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 07, 01, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 07, 07, sep = "-"), player_type = 'batter')
  
  date708714 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 07, 08, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 07, 14, sep = "-"), player_type = 'batter')
  
  date715721 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 07, 15, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 07, 21, sep = "-"), player_type = 'batter')
  
  date722728 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 07, 22, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 07, 28, sep = "-"), player_type = 'batter')
  
  date729804 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 07, 29, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 08, 04, sep = "-"), player_type = 'batter')
  
  date805811 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 08, 05, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 08, 11, sep = "-"), player_type = 'batter')
  
  date812818 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 08, 12, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 08, 16, sep = "-"), player_type = 'batter')
  
  date819825 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 08, 17, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 08, 25, sep = "-"), player_type = 'batter')
  
  date826901 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 08, 26, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 09, 01, sep = "-"), player_type = 'batter')
  
  date902908 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 09, 02, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 09, 08, sep = "-"), player_type = 'batter')
  
  date909915 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 09, 09, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 09, 15, sep = "-"), player_type = 'batter')
  
  date916922 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 09, 16, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 09, 22, sep = "-"), player_type = 'batter')
  
  date923929 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 09, 23, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 09, 29, sep = "-"), player_type = 'batter')
  
  date930103 = baseballr::scrape_statcast_savant(start_date = paste(paste(201, i, sep = ""), 09, 23, sep = "-"),
                                                 end_date = paste(paste(201, i, sep = ""), 10, 03, sep = "-"), player_type = 'batter')
  
  assign(paste("SavantData1", i, sep =""), rbind(date328407, date408414, date415421, date422428, date429505,
                                                 date506512, date513519, date520526, date527602, date603609,
                                                 date610616, date617623, date624630, date701707, date708714,
                                                 date715721, date722728, date729804, date805811, date812818,
                                                 date819825, date826901, date902908, date909915, date916922,
                                                 date923929, date930103))
  
}


SavantData1719 <- rbind(SavantData17, SavantData18, SavantData19)

# can change the year range, careful... files will be large
write.csv("SavantData1719.csv")

SavantData1720 <- rbind(SavantData17, SavantData18, SavantData19)