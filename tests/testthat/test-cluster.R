test_that("default cluster only creates once", {
  cl1 <- default_cluster()
  cl2 <- default_cluster()

  expect_identical(cl1, cl2)

  # and errors if you attempt to set n the second time
  expect_snapshot_error(default_cluster(10))
})

test_that("subsetting cluster returns cluster", {
  expect_s3_class(default_cluster()[1], "multidplyr_cluster")
})

test_that("cluster has useful print method", {
  expect_snapshot({
    cl <- default_cluster()
    cl
  })
})
