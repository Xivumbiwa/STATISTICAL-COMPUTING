---
title: "STATS COMPUTING ASSIGNMENT 2"
---




## QUESTION 1




::: {.cell}

```{.r .cell-code}
library(foreach)
```

::: {.cell-output .cell-output-stderr}

```
Warning: package 'foreach' was built under R version 4.2.3
```


:::

```{.r .cell-code}
library(doParallel)
```

::: {.cell-output .cell-output-stderr}

```
Warning: package 'doParallel' was built under R version 4.2.3
```


:::

::: {.cell-output .cell-output-stderr}

```
Loading required package: iterators
```


:::

::: {.cell-output .cell-output-stderr}

```
Warning: package 'iterators' was built under R version 4.2.3
```


:::

::: {.cell-output .cell-output-stderr}

```
Loading required package: parallel
```


:::

```{.r .cell-code}
results <- foreach(i = 1:100) %do% {
  vals <- rexp(100, rate = 1)
  mean_vals <- mean(vals)
  var_vals <- var(vals)
  return(rbind(mean_vals, var_vals))

}

results
```

::: {.cell-output .cell-output-stdout}

```
[[1]]
              [,1]
mean_vals 1.025494
var_vals  1.374331

[[2]]
              [,1]
mean_vals 1.279724
var_vals  1.068862

[[3]]
               [,1]
mean_vals 0.9953732
var_vals  1.3306065

[[4]]
              [,1]
mean_vals 0.985748
var_vals  0.884194

[[5]]
              [,1]
mean_vals 1.072914
var_vals  1.099580

[[6]]
               [,1]
mean_vals 0.9623832
var_vals  1.4254869

[[7]]
               [,1]
mean_vals 0.9542118
var_vals  0.9365661

[[8]]
               [,1]
mean_vals 0.8263948
var_vals  0.5301725

[[9]]
              [,1]
mean_vals 1.180269
var_vals  1.077112

[[10]]
              [,1]
mean_vals 1.080323
var_vals  1.047792

[[11]]
              [,1]
mean_vals 1.188120
var_vals  1.424877

[[12]]
              [,1]
mean_vals 1.120545
var_vals  1.127588

[[13]]
              [,1]
mean_vals 1.048231
var_vals  0.878925

[[14]]
               [,1]
mean_vals 0.8452391
var_vals  0.6613683

[[15]]
               [,1]
mean_vals 0.8753078
var_vals  1.1035708

[[16]]
              [,1]
mean_vals 1.030991
var_vals  0.822993

[[17]]
              [,1]
mean_vals 1.024069
var_vals  1.078149

[[18]]
              [,1]
mean_vals 1.069982
var_vals  1.774382

[[19]]
               [,1]
mean_vals 0.9224886
var_vals  0.7405636

[[20]]
               [,1]
mean_vals 0.9299064
var_vals  0.9377791

[[21]]
               [,1]
mean_vals 0.9477846
var_vals  0.7210386

[[22]]
              [,1]
mean_vals 1.072980
var_vals  1.066939

[[23]]
               [,1]
mean_vals 0.9842624
var_vals  0.7844861

[[24]]
              [,1]
mean_vals 1.033483
var_vals  0.854226

[[25]]
               [,1]
mean_vals 1.0276150
var_vals  0.9125371

[[26]]
              [,1]
mean_vals 1.003264
var_vals  1.145974

[[27]]
               [,1]
mean_vals 1.0193620
var_vals  0.9582738

[[28]]
               [,1]
mean_vals 1.0489317
var_vals  0.9536892

[[29]]
              [,1]
mean_vals 1.097237
var_vals  1.001242

[[30]]
               [,1]
mean_vals 0.9642462
var_vals  1.0375441

[[31]]
              [,1]
mean_vals 1.067895
var_vals  1.140512

[[32]]
              [,1]
mean_vals 1.212864
var_vals  1.466062

[[33]]
               [,1]
mean_vals 0.8850167
var_vals  0.8089645

[[34]]
              [,1]
mean_vals 1.145543
var_vals  1.103904

[[35]]
               [,1]
mean_vals 0.9838054
var_vals  1.0780524

[[36]]
               [,1]
mean_vals 1.0643584
var_vals  0.9719326

[[37]]
               [,1]
mean_vals 0.9653439
var_vals  0.8476018

[[38]]
               [,1]
mean_vals 0.9337064
var_vals  0.9008902

[[39]]
               [,1]
mean_vals 0.9990937
var_vals  0.8271012

[[40]]
              [,1]
mean_vals 1.108546
var_vals  1.561596

[[41]]
              [,1]
mean_vals 1.004444
var_vals  0.857110

[[42]]
               [,1]
mean_vals 0.8529706
var_vals  0.9104935

[[43]]
               [,1]
mean_vals 0.9436140
var_vals  0.7283022

[[44]]
              [,1]
mean_vals 1.034978
var_vals  1.325614

[[45]]
               [,1]
mean_vals 1.0182636
var_vals  0.9578832

[[46]]
               [,1]
mean_vals 0.9600907
var_vals  0.7703506

[[47]]
              [,1]
mean_vals 1.225912
var_vals  1.293094

[[48]]
               [,1]
mean_vals 0.9503943
var_vals  1.2966519

[[49]]
               [,1]
mean_vals 1.0231133
var_vals  0.9222031

[[50]]
              [,1]
mean_vals 1.162288
var_vals  1.750063

[[51]]
               [,1]
mean_vals 0.9664254
var_vals  1.2711843

[[52]]
               [,1]
mean_vals 0.9498722
var_vals  0.6723421

[[53]]
               [,1]
mean_vals 0.9037359
var_vals  0.6284623

[[54]]
              [,1]
mean_vals 1.077518
var_vals  1.015781

[[55]]
              [,1]
mean_vals 1.124225
var_vals  1.545901

[[56]]
               [,1]
mean_vals 0.9749303
var_vals  0.6475018

[[57]]
               [,1]
mean_vals 0.9886007
var_vals  1.1261510

[[58]]
               [,1]
mean_vals 1.0042710
var_vals  0.8656656

[[59]]
               [,1]
mean_vals 0.8960581
var_vals  1.1231584

[[60]]
              [,1]
mean_vals 1.012736
var_vals  1.006635

[[61]]
               [,1]
mean_vals 1.0660024
var_vals  0.9854179

[[62]]
               [,1]
mean_vals 0.9730413
var_vals  0.8881210

[[63]]
              [,1]
mean_vals 1.092746
var_vals  1.311152

[[64]]
              [,1]
mean_vals 1.207459
var_vals  1.781655

[[65]]
               [,1]
mean_vals 0.8922413
var_vals  0.6501522

[[66]]
              [,1]
mean_vals 1.061705
var_vals  1.177055

[[67]]
              [,1]
mean_vals 1.072382
var_vals  1.053579

[[68]]
               [,1]
mean_vals 0.9269532
var_vals  0.9739936

[[69]]
               [,1]
mean_vals 0.9489672
var_vals  1.0526699

[[70]]
               [,1]
mean_vals 0.9274410
var_vals  0.8719916

[[71]]
               [,1]
mean_vals 0.9656390
var_vals  0.8797236

[[72]]
               [,1]
mean_vals 0.9645287
var_vals  1.0238345

[[73]]
               [,1]
mean_vals 0.7750683
var_vals  0.6400146

[[74]]
              [,1]
mean_vals 1.186743
var_vals  1.262885

[[75]]
               [,1]
mean_vals 0.8069119
var_vals  0.6449400

[[76]]
               [,1]
mean_vals 0.9696773
var_vals  0.7223574

[[77]]
               [,1]
mean_vals 0.9715106
var_vals  1.0668240

[[78]]
               [,1]
mean_vals 0.9920390
var_vals  0.8459896

[[79]]
               [,1]
mean_vals 0.9410944
var_vals  0.6900668

[[80]]
               [,1]
mean_vals 0.7786407
var_vals  0.6933648

[[81]]
              [,1]
mean_vals 1.088852
var_vals  1.104098

[[82]]
              [,1]
mean_vals 1.005700
var_vals  1.201626

[[83]]
               [,1]
mean_vals 0.8152387
var_vals  0.8290112

[[84]]
               [,1]
mean_vals 0.8295915
var_vals  0.7023972

[[85]]
              [,1]
mean_vals 1.264516
var_vals  1.394040

[[86]]
               [,1]
mean_vals 0.9979531
var_vals  0.8749959

[[87]]
               [,1]
mean_vals 1.0289631
var_vals  0.7376739

[[88]]
               [,1]
mean_vals 1.0772216
var_vals  0.8960673

[[89]]
               [,1]
mean_vals 0.7921517
var_vals  0.5953405

[[90]]
              [,1]
mean_vals 1.033944
var_vals  1.082628

[[91]]
              [,1]
mean_vals 1.104556
var_vals  1.142462

[[92]]
               [,1]
mean_vals 0.9765488
var_vals  0.7536387

[[93]]
              [,1]
mean_vals 1.071001
var_vals  1.337575

[[94]]
              [,1]
mean_vals 1.143622
var_vals  1.601316

[[95]]
               [,1]
mean_vals 0.9213797
var_vals  1.1749802

[[96]]
              [,1]
mean_vals 1.289874
var_vals  1.741382

[[97]]
               [,1]
mean_vals 0.9600307
var_vals  0.9590323

[[98]]
              [,1]
mean_vals 1.080049
var_vals  1.291952

[[99]]
              [,1]
mean_vals 1.104742
var_vals  1.056653

[[100]]
              [,1]
mean_vals 1.007709
var_vals  0.565358
```


:::
:::




## QUESTION 2




::: {.cell}

```{.r .cell-code}
library(foreach)
library(doParallel)

library(MASS)
gal <- galaxies

B<- 1000
tboot <- numeric(B) 

#Doing 1000 single bootstraps
system.time({
  result <- foreach(i = 1:1000, .combine = c, Sys.sleep(0.001)) %do% {
    tboot[i] <- median(sample(gal, replace=TRUE))
  }
})
```

::: {.cell-output .cell-output-stdout}

```
   user  system elapsed 
   0.01    0.00    0.01 
```


:::

```{.r .cell-code}
system.time({
  for (i in 1:B) {
    tboot[i] <- median(sample(gal, replace = T))
  }
})
```

::: {.cell-output .cell-output-stdout}

```
   user  system elapsed 
   0.06    0.00    0.06 
```


:::

```{.r .cell-code}
#Doing 1000 bootstrap samples at a Time
system.time({
  result <- foreach(i = 1:1000, .combine = c, Sys.sleep(0.001)) %do% {
    replicate(1000, median(sample(gal, replace=TRUE)))
  }
})
```

::: {.cell-output .cell-output-stdout}

```
   user  system elapsed 
      0       0       0 
```


:::

```{.r .cell-code}
R <- 1000  
bias <- rep(NA, times = R)
tboot2 <- rep(NA, times = B)  

system.time({
for (j in 1:1000) {
  
  for (i in 1:1000) {
    tboot2[i] <- median(sample(gal, replace = T))
  }
}
})
```

::: {.cell-output .cell-output-stdout}

```
   user  system elapsed 
  55.27    1.06   59.83 
```


:::
:::




## QUESTION 3




::: {.cell}

```{.r .cell-code}
library(foreach)
library(doParallel)

n<-50
u<- rexp(n,rate=1)
mean.1 <- mean(u)
true_mean <- 1 

B<-1000
c1 <- c()
c2 <- c()
Bootstr_mean <- numeric(B)
result <- 0


cl <- makeCluster(3)
registerDoParallel(cl)

result <- foreach(i= 1:B, .combine='+') %dopar%{
  samp_data <- rexp(n, rate=1)
  Bootstr_mean <- replicate(B, mean(sample(samp_data, replace=TRUE)))
  Percintile <- quantile(Bootstr_mean, c(0.025, 0.975))
  
  if (Percintile[1] <= true_mean && Percintile[2] >= true_mean){
    return(1)
  } else{
    return(0)
  }
  
  
}

coverage <- result/B
coverage
```

::: {.cell-output .cell-output-stdout}

```
[1] 0.912
```


:::

```{.r .cell-code}
cat("coverage of a percentile bootstrap confidence interval is ", coverage,"\n")
```

::: {.cell-output .cell-output-stdout}

```
coverage of a percentile bootstrap confidence interval is  0.912 
```


:::

```{.r .cell-code}
stopCluster(cl)
```
:::




## QUESTION 4




::: {.cell}

```{.r .cell-code}
library(foreach)

set.seed(1234)
result <- foreach(i = 1:3) %do% {
  it <- irnorm(5)
  nextElem(it)
  nextElem(it)
  nextElem(it)
  nextElem(it)
  nextElem(it)

}

for (i in 1:3) {
  maxi <- max(result[[i]])
  cat("Vector", i, "Max:", maxi, "\n")
}
```

::: {.cell-output .cell-output-stdout}

```
Vector 1 Max: 0.4595894 
Vector 2 Max: -0.49685 
Vector 3 Max: 2.070271 
```


:::
:::




## QUESTION 5

### FOREACH




::: {.cell}

```{.r .cell-code}
library(parallel)
library(foreach)
library(iterators)

set.seed(1234)
result <- function() {
  it <- irnorm(5)
  nextElem(it)
  nextElem(it)
  nextElem(it)
  nextElem(it)
  nextElem(it)
}

system.time({
  result1 <- foreach(i = 1:3) %do% {
    result()
  }

  for (i in 1:3) {
    maxi <- max(result1[[i]])
    print(maxi)
  }
})
```

::: {.cell-output .cell-output-stdout}

```
[1] 0.4595894
[1] -0.49685
[1] 2.070271
```


:::

::: {.cell-output .cell-output-stdout}

```
   user  system elapsed 
   0.01    0.00    0.01 
```


:::
:::




### parLapply




::: {.cell}

```{.r .cell-code}
library(parallel)
library(iterators)


cl <- makeCluster(3) 
clusterExport(cl, varlist = c("result", "irnorm", "nextElem"))  

set.seed(1234)
result <- function() {

  it <- irnorm(5)
  nextElem(it)
  nextElem(it)
  nextElem(it)
  nextElem(it)
  nextElem(it)
}


system.time({
  result2 <- parLapply(cl, 1:3, function(i) {
    result()
  })
  
 
  result2 <- do.call(cbind, result2)
  
  for (i in 1:3) {
    maxi <- max(result2[, i])
    print(maxi)
  }
})
```

::: {.cell-output .cell-output-stdout}

```
[1] 1.371343
[1] 1.193258
[1] 0.07326432
```


:::

::: {.cell-output .cell-output-stdout}

```
   user  system elapsed 
      0       0       0 
```


:::

```{.r .cell-code}
stopCluster(cl)
```
:::




\

### REPLICATE




::: {.cell}

```{.r .cell-code}
library(parallel)
library(iterators)

set.seed(1234)
result <- function() {
  it <- irnorm(5)
  nextElem(it)
  nextElem(it)
  nextElem(it)
  nextElem(it)
  nextElem(it)
}

system.time({
  result2 <- replicate(n = 3, result())

  for (i in 1:3) {
    maxi <- max(result2[,i])
    print(maxi)
  }
})
```

::: {.cell-output .cell-output-stdout}

```
[1] 0.4595894
[1] -0.49685
[1] 2.070271
```


:::

::: {.cell-output .cell-output-stdout}

```
   user  system elapsed 
      0       0       0 
```


:::
:::

