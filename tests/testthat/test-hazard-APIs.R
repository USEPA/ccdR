test_that("catch missing API", {
  expect_error(get_hazard_by_dtxsid(DTXSID = 'DTXSID7020182'), 'Please input an API_key!')
  expect_error(get_human_hazard_by_dtxsid(DTXSID = 'DTXSID7020182'), 'Please input an API_key!')
  expect_error(get_ecotox_hazard_by_dtxsid(DTXSID = 'DTXSID7020182'), 'Please input an API_key!')
  expect_error(get_skin_eye_hazard(DTXSID = 'DTXSID7020182'), 'Please input an API_key!')
  expect_error(get_cancer_hazard(DTXSID = 'DTXSID7020182'), 'Please input an API_key!')
  expect_error(get_genetox_summary(DTXSID = 'DTXSID7020182'), 'Please input an API_key!')
  expect_error(get_genetox_details(DTXSID = 'DTXSID7020182'), 'Please input an API_key!')
})

test_that("catch missing DTXSID", {
  expect_error(get_hazard_by_dtxsid(API_key = 'test_key'), 'Please input a DTXSID!')
  expect_error(get_human_hazard_by_dtxsid(API_key = 'test_key'), 'Please input a DTXSID!')
  expect_error(get_ecotox_hazard_by_dtxsid(API_key = 'test_key'), 'Please input a DTXSID!')
  expect_error(get_skin_eye_hazard(API_key = 'test_key'), 'Please input a DTXSID!')
  expect_error(get_cancer_hazard(API_key = 'test_key'), 'Please input a DTXSID!')
  expect_error(get_genetox_summary(API_key = 'test_key'), 'Please input a DTXSID!')
  expect_error(get_genetox_details(API_key = 'test_key'), 'Please input a DTXSID!')
})

test_that("Return data type", {
  expect_type(get_hazard_by_dtxsid(DTXSID = 'DTXSID7020182', API_key = Sys.getenv('CCTE_API_KEY')), 'list')
  expect_type(get_hazard_by_dtxsid(DTXSID = '', API_key = Sys.getenv('CCTE_API_KEY')), 'NULL')
  #expect_type(get_hazard_by_dtxsid(DTXSID = 'DTXSID7020182', API_key = ''), 'NULL')
  expect_type(get_human_hazard_by_dtxsid(DTXSID = 'DTXSID7020182', API_key = Sys.getenv('CCTE_API_KEY')), 'list')
  expect_type(get_human_hazard_by_dtxsid(DTXSID = '', API_key = Sys.getenv('CCTE_API_KEY')), 'NULL')
  #expect_type(get_human_hazard_by_dtxsid(DTXSID = 'DTXSID7020182', API_key = ''), 'NULL')
  expect_type(get_ecotox_hazard_by_dtxsid(DTXSID = 'DTXSID7020182', API_key = Sys.getenv('CCTE_API_KEY')), 'list')
  expect_type(get_ecotox_hazard_by_dtxsid(DTXSID = '', API_key = Sys.getenv('CCTE_API_KEY')), 'NULL')
  #expect_type(get_ecotox_hazard_by_dtxsid(DTXSID = 'DTXSID7020182', API_key = ''), 'NULL')
  expect_type(get_skin_eye_hazard(DTXSID = 'DTXSID7020182', API_key = Sys.getenv('CCTE_API_KEY')), 'list')
  expect_type(get_skin_eye_hazard(DTXSID = '', API_key = Sys.getenv('CCTE_API_KEY')), 'NULL')
  #expect_type(get_skin_eye_hazard(DTXSID = 'DTXSID7020182', API_key = ''), 'NULL')
  expect_type(get_cancer_hazard(DTXSID = 'DTXSID7020182', API_key = Sys.getenv('CCTE_API_KEY')), 'list')
  expect_type(get_cancer_hazard(DTXSID = '', API_key = Sys.getenv('CCTE_API_KEY')), 'NULL')
  #expect_type(get_cancer_hazard(DTXSID = 'DTXSID7020182', API_key = ''), 'NULL')
  expect_type(get_genetox_summary(DTXSID = 'DTXSID7020182', API_key = Sys.getenv('CCTE_API_KEY')), 'list')
  expect_type(get_genetox_summary(DTXSID = '', API_key = Sys.getenv('CCTE_API_KEY')), 'NULL')
  #expect_type(get_genetox_summary(DTXSID = 'DTXSID7020182', API_key = ''), 'NULL')
  expect_type(get_genetox_details(DTXSID = 'DTXSID7020182', API_key = Sys.getenv('CCTE_API_KEY')), 'list')
  expect_type(get_genetox_details(DTXSID = '', API_key = Sys.getenv('CCTE_API_KEY')), 'NULL')
  #expect_type(get_genetox_details(DTXSID = 'DTXSID7020182', API_key = ''), 'NULL')
})