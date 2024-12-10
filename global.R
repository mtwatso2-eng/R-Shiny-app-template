require(shiny)
require(tidyverse); require(magrittr)
require(plotly); require(googledrive)
source("utils.R")
sapply(list.files(path = "modules", recursive = TRUE, pattern = "^.*\\.R$", full.names = TRUE), source)

drive_auth(cache = ".secrets/")
drive_download("https://drive.google.com/file/d/1A4F1YtkW7lA_DLnelj3J_UuAm_83AHXB/view?usp=drive_link", "inferences.csv", overwrite = TRUE)

inferences <- read.csv("inferences.csv")
