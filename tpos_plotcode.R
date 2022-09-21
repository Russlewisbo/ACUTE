library (ggplot2)
library (RColorBrewer)

theme_set(theme_bw())
ggplot(data=wp1)
gg <- ggplot(wp1, aes(x=inoculum, y=tpos, color=isolate, shape=matrix, fill=isolate)) + geom_point(size=4, alpha = 0.5) + 
 scale_x_log10 ()
+ scale_y_discrete(name="Time to positivity (Tpos)", limits=c(4,15)) 
gg 

geom_smooth