#' Provides compliments
#' @description
#' Provides compliments to QEARI peoples
#'
#' @importFrom dplyr select
#' @return character string
#' @export
#'
#' @examples
#' provide_compliments()
provide_compliments <- function() {

  name <- compliments %>%
    select(Name) %>%
    dplyr::sample_n(1) %>%
    dplyr::pull()

  comp <- compliments %>%
    select(Compliments) %>%
    dplyr::sample_n(1) %>%
    dplyr::pull()

  return(paste(name, comp))
}


