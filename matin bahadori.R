#Exercise1-----

x<- matrix(runif(100, min=0, max=1), nrow=10,ncol=10)
x
df1 <- data.frame(x)
df1
df1[3,2] <- 500
df1
N1 <- C(1:10)
df2 <- data.frame(df1,N1)
df2

x <- df2[4,2]
x
func <- function(x) {(((x * 3) + 6) / 3) - x}
func(x)


#Exercise2-----

setwd("/Users/matinbahadori/Downloads")
defo <- read.table("defoliation.txt", header = TRUE)
sylv<- defo[defo$Specie=="Pinus sylvestris",]
sylv
Abundance_cover <- matrix(runif(76, min=0, max=1))
Abundance_cover
water <- defo[defo$Water_potential]
water
DF1 <- data.frame(Abundance_cover,water)
DF1
sylv_DF1 <- merge(sylv, DF1, by = "Water_potential")
sylv_DF1
