library(purrr)
library(jsonlite)
library(repurrrsive)

got_chars_json() |>
  fromJSON(simplifyDataFrame = FALSE) |>
  map("playedBy") |>
  flatten_chr() |>
  keep( \(x) x != "")
