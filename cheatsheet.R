# 画图时x轴按照某确定的顺序
df$v1 <- factor(df$v1, levels=c("Safe","2","3","4","5","6","7","8","9","Speculative"), ordered=TRUE)
ggplot()
