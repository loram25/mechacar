mpg_summary <- mpg %>% group_by(class) %>% summarize(Mean_Engine=mean(displ),SD_Engine=sd(displ))
plt <- ggplot(mpg_summary,aes(x=class,y=Mean_Engine)) #import dataset into ggplot2
plt + geom_point(size=4) + labs(x="Vehicle Class",y="Mean Engine Size") + #add scatter plot with labels
geom_errorbar(aes(ymin=Mean_Engine-SD_Engine,ymax=Mean_Engine+SD_Engine))

mpg_long <- mpg %>% gather(key="MPG_Type", value="Rating", c(cty,hwy))
head(mpg_long)

plt <- ggplot(mpg_long,aes(x=manufacturer,y=Rating,color=MPG_Type)) #import dataset into ggplot2
plt + geom_boxplot() + facet_wrap(vars(MPG_Type)) + #create multiple boxplots, one for each MPG type
theme(axis.text.x=element_text(angle=45,hjust=1),legend.position = "none") + xlab("Manufacturer") #rotate x-axis labels

ggplot(mtcars,aes(x=wt)) + geom_density()
shapiro.test(mtcars$wt)

#15.6.1

population_table <- read.csv('used_car_data.csv', check.names = F, stringsAsFactors = F)
plt <- ggplot(population_table,aes(x=log10(Miles_Driven)))
plt + geom_density()

sample_table <- population_table %>% sample_n(50)
sample_table2 <- population_table %>% sample_n(50)
plt <- ggplot(sample_table,aes(x=log10(Miles_Driven)))
plt + geom_density()

t.test(log10(sample_table$Miles_Driven), mu=mean(log10(population_table$Miles_Driven)))
t.test(log10(sample_table$Miles_Driven), log10(sample_table2$Miles_Driven))

mpg_data <- read.csv('mpg_modified.csv')
mpg_1999 <- mpg_data %>% filter(year==1999)
mpg_2008 <- mpg_data %>% filter(year==2008)

t.test(mpg_1999$hwy,mpg_2008$hwy,paired = T)

#15.6.5

mtcars_filt <- mtcars[,c("hp","cyl")]
mtcars_filt$cyl <- factor(mtcars_filt$cyl)
summary(aov(hp ~ cyl, data=mtcars_filt))

#15.7.1
plt <- ggplot(mtcars, aes(x=hp,y=qsec))
plt + geom_point()
cor(mtcars$hp,mtcars$qsec)

used_cars <- read.csv('used_car_data.csv', stringsAsFactors = F)
head(used_cars)
plt <- ggplot(used_cars,aes(x=Miles_Driven,y=Selling_Price))
plt + geom_point()
cor(used_cars$Miles_Driven,used_cars$Selling_Price)

used_matrix <- as.matrix(used_cars[,c("Selling_Price","Present_Price","Miles_Driven")])
cor(used_matrix)

summary(lm(qsec ~ hp, mtcars))
model <- lm(qsec ~ hp, mtcars)
yvals <- model$coefficients['hp']*mtcars$hp + model$coefficients['(Intercept)']
plt <- ggplot(mtcars,aes(x=hp,y=qsec))
plt + geom_point() + geom_line(aes(y=yvals),color="red")

#15.7.3
lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars)
summary(lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars))

#15.8.1
tbl <- table(mpg$class,mpg$year)
chisq.test(tbl)
