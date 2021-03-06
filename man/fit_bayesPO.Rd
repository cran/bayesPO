% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bayesPO.R
\name{fit_bayesPO}
\alias{fit_bayesPO}
\alias{fit_bayesPO,bayesPO_model,matrix-method}
\alias{fit_bayesPO,bayesPO_fit,matrix-method}
\title{Fit presence-only data using a Bayesian Poisson Process model}
\usage{
fit_bayesPO(
  object,
  background,
  mcmc_setup = list(iter = 5000),
  verbose = TRUE,
  ...
)

\S4method{fit_bayesPO}{bayesPO_model,matrix}(
  object,
  background,
  mcmc_setup,
  verbose = TRUE,
  area = 1,
  cores = 1,
  ...
)

\S4method{fit_bayesPO}{bayesPO_fit,matrix}(
  object,
  background,
  mcmc_setup = list(iter = object$mcmc_setup$iter),
  verbose = TRUE,
  cores = 1,
  ...
)
}
\arguments{
\item{object}{Either a \code{bayesPO_model} or \code{bayesPO_fit} object. If
a model, then the model is fit according to specifications. If a fit,
then the model used to fit the model is recovered and used to continue
the MCMC calculations where the previous one left off.}

\item{background}{A matrix where the rows are the grid cells for the studied
region and the columns are the covariates. \code{NA}s must be removed. If
the function is being used on a \code{bayesPO_fit} object, the background
must be exactly the same as the one used in the original fit.}

\item{mcmc_setup}{A list containing \code{iter} to inform the model how
many iterations are to be run. The list may optionally contain the objects.}

\item{verbose}{Set to \code{FALSE} to suppress all messages to console.}

\item{...}{Parameters passed on to specific methods.
\code{burnin} and \code{thin} to inform these instructions as well.}

\item{area}{A positive number with the studied region's area.}

\item{cores}{Currently unused.}
}
\value{
An object of class \code{"bayesPO_fit"}.
}
\description{
The model uses a data augmentation scheme to avoid performing approximations
on the likelihood function.
}
\details{
The background is kept outside of the
}
\seealso{
\code{\link{bayesPO_model}} and \code{\link{bayesPO_fit-class}}.
}
