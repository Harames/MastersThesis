df = read.csv("DataCollected.csv")
df2 = df
# Correct data for atmospheric pressure (Obtained from wunderground.com)
df2[df2$Model == 0,4:15] = df2[df2$Model == 0,4:15] * (1013/864.88)
df2[df2$Model == 1,4:15] = df2[df2$Model == 1,4:15] * (1013/864.54)
# Move Air Rate from FPM to FPS
df2[,4:15] = df2[,4:15] / 60
df3 = df2[c(1,2,5,6,7,8),]
df4 = df2[,4:15]
write.csv(df4, "ScaledData.csv")
df4
df2
