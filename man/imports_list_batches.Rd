% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{imports_list_batches}
\alias{imports_list_batches}
\title{List batch imports}
\usage{
imports_list_batches(hidden = NULL, limit = NULL, page_num = NULL,
  order = NULL, order_dir = NULL)
}
\arguments{
\item{hidden}{boolean optional. If specified to be true, returns hidden items. Defaults to false, returning non-hidden items.}

\item{limit}{integer optional. Number of results to return. Defaults to 20. Maximum allowed is 50.}

\item{page_num}{integer optional. Page number of the results to return. Defaults to the first page, 1.}

\item{order}{string optional. The field on which to order the result set. Defaults to updated_at. Must be one of: updated_at, created_at.}

\item{order_dir}{string optional. Direction in which to sort, either asc (ascending) or desc (descending) defaulting to desc.}
}
\value{
An array containing the following fields:
\item{id}{integer, The ID for the import.}
\item{schema}{string, The destination schema name. This schema must already exist in Redshift.}
\item{table}{string, The destination table name, without the schema prefix. This table must already exist in Redshift.}
\item{remoteHostId}{integer, The ID of the destination database host.}
\item{state}{string, The state of the run; one of "queued", "running", "succeeded", "failed", or "cancelled".}
\item{startedAt}{string, The time the last run started at.}
\item{finishedAt}{string, The time the last run completed.}
\item{error}{string, The error returned by the run, if any.}
}
\description{
List batch imports
}
