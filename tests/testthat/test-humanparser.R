context("basic functionality")
test_that("we can do something", {

  expect_that(parse_name("John Smith Jr."), is_a("list"))

  full_names <- c("David Regan", "Izaque Iuzuru Nagata",
                  "Christian Schmit de la Breli", "Peter Doyle", "Hans R.Bruetsch",
                  "Marcus Reichel", "Per-Axel Koch", "Louis Van der Walt",
                  "Mario Adamek", "Ugur Tozsekerli", "Judit Ludvai" )

  expect_that(parse_names(full_names), is_a("data.frame"))

})
