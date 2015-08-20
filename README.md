<!-- README.md is generated from README.Rmd. Please edit that file -->
humanparser is a very small package that parses full (human) names into their component parts. Uses code from the node.js [humanparser](https://github.com/chovy/humanparser) module.

The following functions are implemented:

-   `parse_name`: Parse a "human" name into components
-   `parse_names`: Parse a character vector of names into a data frame

### News

-   Version 0.0.1.999 released - tests
-   Version 0.0.0.999 released

### Installation

``` r
devtools::install_github("hrbrmstr/humanparser")
```

### Usage

``` r
library(humanparser)

# current verison
packageVersion("humanparser")
#> [1] '0.0.1.9000'

# just one

parse_name("John Smith Jr.")
#> $firstName
#> [1] "John"
#> 
#> $suffix
#> [1] "Jr."
#> 
#> $lastName
#> [1] "Smith"
#> 
#> $fullName
#> [1] "John Smith Jr."

# or a bunch of 'em

full_names <- c("David Regan", "Izaque Iuzuru Nagata", 
                "Christian Schmit de la Breli", "Peter Doyle", "Hans R.Bruetsch", 
                "Marcus Reichel", "Per-Axel Koch", "Louis Van der Walt", 
                "Mario Adamek", "Ugur Tozsekerli", "Judit Ludvai" )

parse_names(full_names)
#> Source: local data frame [11 x 4]
#> 
#>    firstName     lastName                     fullName middleName
#> 1      David        Regan                  David Regan         NA
#> 2     Izaque       Nagata         Izaque Iuzuru Nagata     Iuzuru
#> 3  Christian  de la Breli Christian Schmit de la Breli     Schmit
#> 4      Peter        Doyle                  Peter Doyle         NA
#> 5       Hans   R.Bruetsch              Hans R.Bruetsch         NA
#> 6     Marcus      Reichel               Marcus Reichel         NA
#> 7   Per-Axel         Koch                Per-Axel Koch         NA
#> 8      Louis Van der Walt           Louis Van der Walt         NA
#> 9      Mario       Adamek                 Mario Adamek         NA
#> 10      Ugur   Tozsekerli              Ugur Tozsekerli         NA
#> 11     Judit       Ludvai                 Judit Ludvai         NA
```

### Test Results

``` r
library(humanparser)
library(testthat)

date()
#> [1] "Thu Aug 20 14:54:12 2015"

test_dir("tests/")
#> testthat results ========================================================================================================
#> OK: 2 SKIPPED: 0 FAILED: 0
#> 
#> DONE
```

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
