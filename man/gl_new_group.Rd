% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/groups.R
\name{gl_new_group}
\alias{gl_new_group}
\alias{gl_edit_group}
\alias{gl_delete_group}
\title{Manage groups}
\usage{
gl_new_group(name, path, ...)

gl_edit_group(group, ...)

gl_delete_group(group)
}
\arguments{
\item{name}{of the new group}

\item{path}{to the new group}

\item{...}{passed on to \code{\link[=gitlab]{gitlab()}} API call for "Create group"}

\item{group}{The ID or URL-encoded path of the group.}
}
\value{
A tibble with the group information. \code{gl_delete_group()} returns an empty tibble.
}
\description{
Manage groups
}
\details{
You can use extra parameters as proposed in the GitLab API.
}
\examples{
\dontrun{
set_gitlab_connection(
  gitlab_url = "https://gitlab.com", 
  private_token = Sys.getenv("GITLAB_COM_TOKEN")
)
# Create new group
gl_new_group(name = "mygroup")
# Edit existing group
gl_edit_group(group = "<<your-group-id>>", default_branch = "main")
# Delete group
gl_delete_group(group = "<<your-group-id>>")
}
}
