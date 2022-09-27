mass <- 47.5 # Mass of animal
age <- 122 # Age of animal
mass_index <- mass/age # An important index

#> surveys %>% 
  #+ filter(!is.na(hindofoot_length)) %>% 
  #+ group_by(species_id) %>% 
  #+ summarize(hean_hf = mean("hindfoot_length"), 
    #           +           max_hf = max("hindfoot_length"), 
    #          +           min_hf = min("hindfoot_length"))

#> surveys %>% 
  # + filter(!is.na(weight)) %>% 
  #+ group_by(year) %>% 
  #+ filter(weight ==max(weight))
  



# > na.omit( ) #will remove missing values from all columns of a data set.

# > ggplot #stands for grammer of graphics, creates layers for plot (background 
# > layer, dimensions (x/y-axis), data layer, annotations layer, etc.)
# > example: ggplot(data = surveys_complete) will yield just the background.
# > mapping = aes(x = weight, y = hindfoot_length)) will yield the background 
# > with dimensions.
# > + geom_point() [can use geom_line()] will add the data to it. (Not always a good visualization.)
# > can save plot as : my_plot by adding my_plot <- before command. Can always 
# > not add geometric and add that to my_plot when pulling it up.
# > geom_hex/hexbin gives a light to dark concentration scheme in hexagons.
# > 
# >library() calls something up to be used.
# > geom_point(alpha = 0.1) is transparency of points. s oat 10% capacity lightens some.
#> or size = .1 will make the points smaller.
# > new_plot + geom_point(size= .1, aes(color = species_id)), aes allows each species_id
# > to be a different color.
# > new_plot + geom_point(shape = "square", aes(color = species_id))
# > > new_plot + geom_point(aes(color = species_id, shape = species_id))
# >  new_plot + geom_jitter(alpha = 0.1), moves points if they line up.
# > MAKE A SCATTERPLOT WITH SPECIES_ID AS X AXIS, WEIGHT AS Y, COLOR BY PLOT_TYPE.
# > scatter_plot_2 <- ggplot(data = surveys_complete, mapping = 
# > aes (x = species_id, y = weight))scatter_plot_2 + geom_point( aes(color = plot_type))
# > scatter_plot_2 + geom_jitter(alpha = 0.4, size = 0.5, aes(color = sex))
# > ggplot(data = surveys_complete, mapping = aes (x = species_id, y = weight)) + geom_boxplot()
# >  ggplot(data = surveys_complete, mapping = aes (x = species_id, y = weight)) + geom_boxplot(alpha = .1) + geom_jitter(alpha = 0.3, color = "tomato")
# > ggplot(data = surveys_complete, mapping = aes (x = species_id, y = weight)) + 
# > geom_jitter(alpha = 0.3, color = "tomato") + geom_boxplot(alpha = .1) [PLACEMENT ISWHEN COMMNAD RUNS.]
# >  ggplot(data = surveys_complete, mapping = aes (x = species_id, y = weight)) + geom_boxplot(alpha = .1) +
# > geom_jitter(alpha = 0.3, color = "tomato")
# > geom_violin = another graph type
# > > ggplot(data = surveys_complete, mapping = aes (x = species_id, y = weight)) + 
# > geom_jitter(alpha = 0.3, color = "tomato") + geom_violin(alpha = 0.1) + scale_y_log10()
#> CREAT BOXPLOT OF HINDFOOT_LENGTH BY SPECIES_ID, USE GEOM_JITTER TO SHOW THE ACTUAL
#> #> DATA BEHIND THE BOXES AND COLOR IT BY SOMETHING.
# > gg plot(data = surveys_complete, mapping = aes (x = species_id, y = hindfoot_length)) + 
  # >geom_jitter(aes(color = sex)) + geom_boxplot()
# > > ggplot(data = surveys_complete, mapping = aes (x = species_id, y = weight, fill = sex)) + geom_boxplot()
# >  ggplot(data = yearly_counts, mapping = aes(x = year, y = n)) + geom_line()
# >  ggplot(data = yearly_counts, mapping = aes(x = year, y = n, group = genus)) + geom_line(aes(color = genus))

# >  ggplot(data = yearly_counts, mapping = aes(x = year, y = n)) +
# > + geom_line() + 
# > + facet_wrap(facet = vars(genus))
# > WILL BREAK UP DATASET INTO EACH GENUS, PLOTING EACH INDIVIDUALLY. 
# > vars/facet  command = group by behind the scenes
# > > ggplot(data = yearly_sex_counts, mapping = aes(x = year, y = n, shape = sex)) +
# > + geom_line() +
 # > + facet_grid(rows = vars(sex), cols = vars(genus)) 
# > > my_plot + labs(title = "Observed Genera Through Time (years)", x = "Year of Observation", y = "Number of Individuals")
# > my_plot + labs(title = "Observed Genera Through Time (years)", x = "Year of Observation", y = "Number of Individuals") +
# > theme(text = element_text(size = 16), axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 0.5))
# >  my_plot + labs(title = "Observed Genera Through Time (years)", x = "Year of Observation", y = "Number of Individuals") + theme(text = element_text(size = 16), axis.text.x = element_text(angle = 65, vjust = 1, hjust = 1, size = 12)) + theme(plot.title = element_text(hjust = 0.5))
# > ggsave("plot.png", final_plot, width = 10, height = 6, units = "cm", dpi = 300) 

# > UGLY PLOT: THEME_VOID, 


Finally, in the final project in this class, you'll need to produce an R package with five functions: 
 
+ One or two for data cleaning and/or data manipulation
+ One or two for a statistical test (ANOVA, linear models, other specialized analyses)
+ One or two for plotting
+ One of your choice for funsies.

In next week's homework, you'll be expected to pick and write one. So start thinking about one now.


> sum(1:5) is an informative name, it literally adds/sums things together.
>sum are integers we want to add. The semicolan adds all #'s btw 1 & 5. =15.
> function_name <- function(inputs) {}
> Above is the function definition line, nad then the function function which defins our inputs/arguments.
> made ofdefinition/body/return statement.

#> calc_vol <- function(length, width, height){
 # volume <- length * width * height
  # return(volume)
# }

calc_vol <- function(length, width, height){
  volume <- length * width * height
  return(volume)
}

calc_mass_index <- function(weight = 1, kg = FALSE, foot_length = 1){
  +     if (kg == FALSE){
    +         weight = weight*.454
    +     }
  +     mass_index <- weight/foot_length
  +     return(mass_index)
  + }

> calc_density <- function(length, width, height){
  +     vol <- calc_vol(lengh, width, height)
  +     mass <- 2.65* calc_vol^.9
  +     density <- mass/vol
  +     return(density)
  + }

> calc_vol <- fuction(length = 2, width = 3, height = 4){
  Error: unexpected '{' in "calc_vol <- fuction(length = 2, width = 3, height = 4){"
  > calc_vol <- function(length = 2, width = 3, height = 4){
    +     volume <- length*width*height
    +     return(volume)
    + }
  > calc_vol(2, 2, 2)
  [1] 8
  > calc_vol(length = 2, width = 2, height = 2)
  [1] 8
  > calc_mass <- function(volume = 1){
    +     mass <- 2.658 volume^.9
    Error: unexpected symbol in:
      "calc_mass <- function(volume = 1){
    mass <- 2.658 volume"
    > calc_mass <- function(volume = 1){
      +     mass <- 2.65* volume^.9
      +     return(mass)
      + }
    > calc_mass(volume = 5)
    [1] 11.28025
    > calc_density <- function(length, width, height){
      +     volume <- calc_vol(length, width, height)
      +     mass <- calc_mass(volume)
      +     density <- mass/volume
      +     return(density)
      + }
    > calc_density(2, 2, 2)
    [1] 2.152469
    > calc_density <- function(length, width, height){
      +     volume <- calc_vol(length, width, height)
      +     mass <- calc_mass(volume)
      +     density <- mass/volume
      +     return(density)
      +     if (density> 0){
        +         return(density)
        +     }
  
    > calc_density <- function(length, width, height){
      +     volume <- calc_vol(length, width, height)
      +     mass <- calc_mass(volume)
      +     density <- mass/volume
      +     return(density)
      +     if (density> 0){
        +         return(density)
        +     } else {
          +         print("Density impossibly small! Check your inputs.")
          +     }
      + }


    data_cleaning (read in dataframe and do some cleaning, return cleaned)
    
    
    ROPENSCIENCE!!! REVIEWS R PACKAGES.
    
    revision mmgmnt: 
    
    
    
    
    
    
