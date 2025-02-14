% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/files.R
\name{gl_list_files}
\alias{gl_list_files}
\title{List of files in a folder}
\usage{
gl_list_files(project, path = "", ref = get_main(), ...)
}
\arguments{
\item{project}{name or id of project (not repository!)}

\item{path}{path of the folder}

\item{ref}{name of ref (commit branch or tag)}

\item{...}{passed on to \code{\link[=gitlab]{gitlab()}} API call}
}
\description{
List of files in a folder
}
\examples{
\dontrun{
# Set GitLab connection for examples
set_gitlab_connection(
 gitlab_url = "https://gitlab.com",
 private_token = Sys.getenv("GITLAB_COM_TOKEN"))

gl_list_files(project = <<your-project-id>>, path = <<path-to-folder>>)
}
}
