# 2022.05.25, 2022.05.30

install.packages("ggmap")
install.packages("ggplot2")
library(ggplot2)
library(ggmap)

# googlemap api register
register_google(key = 'api key') # Geocoding API

gc<-geocode(enc2utf8("종로구"))
gc

cen<- as.numeric(gc)
cen

map<- get_googlemap(center=cen, zoom = 10, size = c(640,640), maptype = 'terrain', scale = 2)
ggmap(map)

cen <- c(-118.233248, 34.085015)
map<-get_googlemap(center=cen)
ggmap(map)

# marker
gc<-geocode(enc2utf8("용인"))
cen<-as.numeric(gc)
map<-get_googlemap(center=cen, maptyp = "roadmap", marker=gc, zoom=15)
ggmap(map)

# marker와 txt함께 적기
names <-c("용두암","상산이출봉","정방폭포","중문관광단지","한라산1100고지","차귀도")
addr <- c("제주시 용두암길 15", 
          "서귀포시 성산읍 성산리",
          "서귀포시 동홍동 299-3",
          "서귀포시 중문동 2624-1",
          "서귀포시 색달동 산1-2",
          "제주시 한경면 고산리 125")

gc<-geocode(enc2utf8(addr))
df<-data.frame(name=names, lon = gc$lon, lat=gc$lat)
df

cen <- c(mean(df$lon), mean(df$lat))
map<- get_googlemap(cen = cen, maptype = "roadmap",zoom=10, marker=gc)
ggmap(map) + geom_text(data=df, aes(x=lon, y=lat), size = 2, label=df$name)

# wind dataset(lon, lat, spd)
str(wind)

## random sample
sp<-sample(1:nrow(wind), 50)
sp
df<-wind[sp,]
cen<-c(mean(df$lon), mean(df$lat))
gc<-data.frame(lon = df$lon, lat = df$lat)

map<- get_googlemap(center =cen, maptype = "roadmap", zoom =6)
ggmap(map) + geom_point(data=df, aes(x=lon, y=lat, size=spd), alpha=0.5, col="yellow") + scale_size_continuous(range = c(1,14))

