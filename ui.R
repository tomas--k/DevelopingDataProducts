shinyUI(pageWithSidebar(
  headerPanel('Interactive K-Means on the Iris Dataset'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(iris)),
    selectInput('ycol', 'Y Variable', names(iris),
                selected=names(iris)[[2]]),
    
    sliderInput('clusters', 'Clusters', 1, 10, 1, step = 1,animate=TRUE)
   

    
  ),
  mainPanel(
    
    tabsetPanel(
      tabPanel("Plot",h3("Plot"),plotOutput('plot1'),br(),plotOutput('plot2')),
      tabPanel("Data",h3("Data"),tableOutput('table')),
      tabPanel("Documentation",
               h4('Description'),
               
               p(style="text-align:justify",
                 'This ',a("Shiny", href="http://www.rstudio.com/shiny/", target="_blank"),' application is targeted at people interested into the Iris dataset and clustering. Like the name mentions, this app is all about clustering the dataset across any of its variables. '),

               
               p(style="text-align:justify",'The app shows you the division into clusters given different number of groups you initially require'),
               
               br(),
               
               h4('Operating Instructions'),
               br(),
               p(style="text-align:justify",'The app is divided into two main sections: on the left, you can see the input part where you can set different parameters'),
               br(),
               tags$div(
                 tags$ul(
                   tags$li("X variable and Y variable: Selectboxes that allow you to choose the variables on the axes."),
                   tags$li("Clusters: Here you can slide to increase/decrease the number of clusters required. Moreover, you can press the play button to show an animation if an increasing number of clusters")

                 )
               ),
               br(),
               p(style="text-align:justify",'On the right, you have a possibility to choose among four tabs:'),
               br(),
               tags$div(
                 tags$ul(
                   tags$li("The Plot: Here you can see the scatterplot of the data nad its division into clusters which can be recognized by different colours of the data. Also, you can see the cluster centers of the individual groups."),
                   tags$li("The Data: Here you can see the dataset shown in a nice table"),
                   tags$li("The Documentation: Here you can find the instructions and other information")
                 )
               ),
               
               h4('What is K-means clustering'),
               
               br(),
               
               p(style="text-align:justify",'k-means clustering is a method of vector quantization, originally from signal processing, that is popular for cluster analysis in data mining. k-means clustering aims to partition n observations into k clusters in which each observation belongs to the cluster with the nearest mean, serving as a prototype of the cluster. This results in a partitioning of the data space into Voronoi cells.

The problem is computationally difficult (NP-hard); however, there are efficient heuristic algorithms that are commonly employed and converge quickly to a local optimum. These are usually similar to the expectation-maximization algorithm for mixtures of Gaussian distributions via an iterative refinement approach employed by both algorithms. Additionally, they both use cluster centers to model the data; however, k-means clustering tends to find clusters of comparable spatial extent, while the expectation-maximization mechanism allows clusters to have different shapes.
s'),
               br(),
               
               p(style="text-align:justify",'Source:Wikipedia'),
               
               h4('Comparison of K-means and the true division into three Iris species'),
               
               br(),
               
               img(src="http://upload.wikimedia.org/wikipedia/commons/1/10/Iris_Flowers_Clustering_kMeans.svg", height =1187 , width = 748),
               
               br(),
               
               p(style="text-align:justify",'Source:Wikipedia')
               
               
      )

  )
)))
