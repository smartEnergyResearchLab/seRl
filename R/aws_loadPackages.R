#' Installs and loads packages into local user space on AWS
#'
#' \code{aws_loadPackages} checks whether each of a list of package is already installed,
#'   installing those which are not pre-installed (and their dependencies). All the packages are then loaded.
#'
#'   Uses the SERL CRAN mirror (only).
#'
#' @param ... A list of packages
#' @param archive The archive to install packages from. Defaults to "http://nexus.serlresearch.ac.uk:8081/repository/r-group" (SERL CRAN mirror). For use elsewhere set mirror to "https://cran.rstudio.com" (for example)
#' @importFrom  utils install.packages
#'
#' @author Luke Blunden, \email{lsb@@soton.ac.uk} (original)
#' @author Michael Harper \email{m.harper@@soton.ac.uk} (revised version)
#' @author Ben Anderson \email{b.anderson@@soton.ac.uk} (revised version)
#' @family utils
#' @export
#'
aws_loadPackages <- function(..., archive = "http://nexus.serlresearch.ac.uk:8081/repository/r-group"){

  packages <- c(...)

  # Check if package is installed
  newPackages <- packages[!(packages %in% utils::installed.packages()[,1])]

  # Install if required
  if(length(newPackages)){
    message("Installing missing packages from ", archive)
    utils::install.packages(newPackage,
                            repos = archive,
                            dependencies = TRUE)}

  # Load packages & give feedback it worked
  sapply(packages, require, character.only = TRUE)
}
