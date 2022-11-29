library(tableone);library(data.table);library(magrittr);library(survival);library(jstable)

url <- "https://raw.githubusercontent.com/jinseob2kim/lecture-snuhlab/master/data/example_g1e.csv"
dt <- fread(url, header=T)
head(dt)
# myVars : 주어진 변수 추출
myVars <- c("HGHT","WGHT","BMI","HDL","LDL", "Q_SMK_YN","Q_HBV_AG")

# catVars : 주어진 변수 중 범주형 변수(categorical variables) 추출
catVars <- c("Q_SMK_YN","Q_HBV_AG")

# 첫 번째 방법 : 범주형으로 미리 변환하지 않고 'factorVars'로 지정
CreateTableOne(vars= myVars, factorVars = catVars, strata= "EXMD_BZ_YYYY", data= dt)

