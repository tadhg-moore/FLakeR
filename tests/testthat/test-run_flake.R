test_that("running flake simulation", {
  sim_folder <- system.file('extdata', package = 'FLakeR')
  status = run_flake(sim_folder, nml_file = "Mueggelsee80-96.nml", verbose = TRUE)

  expect_true(is.character(status))

  expect_true(file.exists(file.path(sim_folder, 'Mueggelsee80-96.rslt')))

})

test_that("running flake simulation - verbose = FALSE", {
  sim_folder <- system.file('extdata', package = 'FLakeR')
  unlink(file.path(sim_folder, 'Mueggelsee80-96.rslt'), recursive = TRUE)
  status = run_flake(sim_folder, nml_file = "Mueggelsee80-96.nml", verbose = FALSE)

  expect_equal(status, 0)

  expect_true(file.exists(file.path(sim_folder, 'Mueggelsee80-96.rslt')))

})
