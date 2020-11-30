# 画图时x轴按照某确定的顺序
df$v1 <- factor(df$v1, levels=c("Safe","2","3","4","5","6","7","8","9","Speculative"), ordered=TRUE)
ggplot()

# 根据某列数据设置分位数将数据分组
df = data.frame(matrix(data = sample(x = 1:1000,size = 50),nrow = 50,ncol = 1)) 

number_col=1 # 分组依据的列序号

df$Group=NA

rankdata=df[,number_col]
for (i in 1:nrow(df)){
  pow=0.1
  if ((df[i,number_col]>=quantile(rankdata,pow-0.1))&&(df[i,number_col]<=quantile(rankdata,pow))) {
    df$Group[i]=paste(quantile(rankdata,pow-0.1),"~",quantile(rankdata,pow),sep = "")
  }
  pow=0.2
  if ((df[i,number_col]>quantile(rankdata,pow-0.1))&&(df[i,number_col]<=quantile(rankdata,pow))) {
    df$Group[i]=paste(quantile(rankdata,pow-0.1),"~",quantile(rankdata,pow),sep = "")
  }
  pow=0.3
  if ((df[i,number_col]>quantile(rankdata,pow-0.1))&&(df[i,number_col]<=quantile(rankdata,pow))) {
    df$Group[i]=paste(quantile(rankdata,pow-0.1),"~",quantile(rankdata,pow),sep = "")
  }
  pow=0.4
  if ((df[i,number_col]>quantile(rankdata,pow-0.1))&&(df[i,number_col]<=quantile(rankdata,pow))) {
    df$Group[i]=paste(quantile(rankdata,pow-0.1),"~",quantile(rankdata,pow),sep = "")
  }
  pow=0.5
  if ((df[i,number_col]>quantile(rankdata,pow-0.1))&&(df[i,number_col]<=quantile(rankdata,pow))) {
    df$Group[i]=paste(quantile(rankdata,pow-0.1),"~",quantile(rankdata,pow),sep = "")
  }
  pow=0.6
  if ((df[i,number_col]>quantile(rankdata,pow-0.1))&&(df[i,number_col]<=quantile(rankdata,pow))) {
    df$Group[i]=paste(quantile(rankdata,pow-0.1),"~",quantile(rankdata,pow),sep = "")
  }
  pow=0.7
  if ((df[i,number_col]>quantile(rankdata,pow-0.1))&&(df[i,number_col]<=quantile(rankdata,pow))) {
    df$Group[i]=paste(quantile(rankdata,pow-0.1),"~",quantile(rankdata,pow),sep = "")
  }
  pow=0.8
  if ((df[i,number_col]>quantile(rankdata,pow-0.1))&&(df[i,number_col]<=quantile(rankdata,pow))) {
    df$Group[i]=paste(quantile(rankdata,pow-0.1),"~",quantile(rankdata,pow),sep = "")
  }
  pow=0.9
  if ((df[i,number_col]>quantile(rankdata,pow-0.1))&&(df[i,number_col]<=quantile(rankdata,pow))) {
    df$Group[i]=paste(quantile(rankdata,pow-0.1),"~",quantile(rankdata,pow),sep = "")
  }
  pow=1
  if ((df[i,number_col]>quantile(rankdata,pow-0.1))&&(df[i,number_col]<=quantile(rankdata,pow))) {
    df$Group[i]=paste(quantile(rankdata,pow-0.1),"~",quantile(rankdata,pow),sep = "")
  }
}

df$Group=as.factor(df$Group)
summary(df$Group)

