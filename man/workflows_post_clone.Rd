% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{workflows_post_clone}
\alias{workflows_post_clone}
\title{Clone this Workflow}
\usage{
workflows_post_clone(id, clone_schedule = NULL,
  clone_notifications = NULL)
}
\arguments{
\item{id}{integer required. The ID for the workflow.}

\item{clone_schedule}{boolean optional. If true, also copy the schedule to the new workflow.}

\item{clone_notifications}{boolean optional. If true, also copy the notifications to the new workflow.}
}
\value{
A list containing the following elements:
\item{id}{integer, The ID for this workflow.}
\item{name}{string, The name of this workflow.}
\item{description}{string, A description of the workflow.}
\item{definition}{string, The definition of the workflow in YAML format. Must not be specified if `fromJobChain` is specified.}
\item{valid}{boolean, The validity of the workflow definition.}
\item{validationErrors}{string, The errors encountered when validating the workflow definition.}
\item{fileId}{string, The file id for the s3 file containing the workflow configuration.}
\item{user}{list, A list containing the following elements: 
\itemize{
\item id integer, The ID of this user.
\item name string, This user's name.
\item username string, This user's username.
\item initials string, This user's initials.
\item online boolean, Whether this user is online.
}}
\item{state}{string, The state of the workflow. State is "running" if any execution is running, otherwise reflects most recent execution state.}
\item{schedule}{list, A list containing the following elements: 
\itemize{
\item scheduled boolean, If the item is scheduled.
\item scheduledDays array, Day based on numeric value starting at 0 for Sunday.
\item scheduledHours array, Hours of the day it is scheduled on.
\item scheduledMinutes array, Minutes of the day it is scheduled on.
\item scheduledRunsPerHour integer, Alternative to scheduled minutes, number of times to run per hour.
}}
\item{timeZone}{string, The time zone of this workflow.}
\item{nextExecutionAt}{string, The time of the next scheduled execution.}
\item{notifications}{list, A list containing the following elements: 
\itemize{
\item urls array, URLs to receive a POST request at job completion
\item successEmailSubject string, Custom subject line for success e-mail.
\item successEmailBody string, Custom body text for success e-mail, written in Markdown.
\item successEmailAddresses array, Addresses to notify by e-mail when the job completes successfully.
\item failureEmailAddresses array, Addresses to notify by e-mail when the job fails.
\item successOn boolean, If success email notifications are on
\item failureOn boolean, If failure email notifications are on
}}
\item{archived}{string, The archival status of the requested item(s).}
\item{hidden}{boolean, The hidden status of the item.}
\item{createdAt}{string, }
\item{updatedAt}{string, }
}
\description{
Clone this Workflow
}
