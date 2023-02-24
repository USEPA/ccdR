% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hazard-APIs.R
\name{get_hazard_by_dtxsid}
\alias{get_hazard_by_dtxsid}
\title{Get hazard data by DTXSID}
\usage{
get_hazard_by_dtxsid(DTXSID = NULL, API_key = NULL)
}
\arguments{
\item{DTXSID}{The chemical identifier DTXSID}

\item{API_key}{The user-specific API key}
}
\value{
A data.frame containing chemical (human and eco) hazard data
}
\description{
Get hazard data by DTXSID
}