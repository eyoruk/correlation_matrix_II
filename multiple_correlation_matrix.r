multiple_correlation_matrix

convert your excel file (including data.frame especially including more than 5 observations) to csv file from Microsoft Excell UTF-8 comma sep
import data set from text base + select heading as Yes + select row names as Use first column
it means that:
> my_data <- read.csv2("~/my_data.csv", row.names=1)
>   View(my_data)
> res <- cor(my_data)
> round(res, 2)
> cor(my_data, use = "complete.obs")

> library(Hmisc)
> rcorr(res, type = c("pearson","spearman"))
> symnum(res, abbr.colnames = FALSE)
> library(corrplot)
> corrplot(res, type = "upper", order = "hclust", 
         tl.col = "black", tl.srt = 45)
> library("PerformanceAnalytics")
> chart.Correlation(my_data, histogram=TRUE, pch=19)


http://www.sthda.com/english/wiki/correlation-matrix-a-quick-start-guide-to-analyze-format-and-visualize-a-correlation-matrix-using-r-software
