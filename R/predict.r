#' Predict the category of a new observation
#' @param nn A probabilistic neural network already trained
#' @param X A vector describing a new observation
#' @export
guess <- function(nn, X) {
    probs <- guess.category.probs(nn, X)
    if(is.na(probs[1])) return(NA)
    category <- names(probs[probs == max(probs)])
    results <- list(choice=category, probabilities=probs)
    return(results)
}
