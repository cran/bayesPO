# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

runBayesPO <- function(beta, delta, lambda, b_updater, d_updater, l_updater, parB, parD, parL, covsClass, covariates, areaD, xClass, xValues, intensityCovs, observabilityCovs, xIntensityCovs, xObservabilityCovs, burnin, thin, iter, threads, verbose) {
    .Call(`_bayesPO_runBayesPO`, beta, delta, lambda, b_updater, d_updater, l_updater, parB, parD, parL, covsClass, covariates, areaD, xClass, xValues, intensityCovs, observabilityCovs, xIntensityCovs, xObservabilityCovs, burnin, thin, iter, threads, verbose)
}

