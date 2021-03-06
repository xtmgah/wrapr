% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qae.R
\name{qae}
\alias{qae}
\title{Quote assignment expressions (name = expr, and name := expr).}
\usage{
qae(...)
}
\arguments{
\item{...}{assignment expressions.}
}
\value{
array of quoted assignment expressions.
}
\description{
Accepts arbitrary un-parsed expressions as
assignments to allow forms such as "Sepal_Long := Sepal.Length >= 2 * Sepal.Width".
(without the quotes).
Terms are expressions of the form "lhs := rhs" or "lhs = rhs".
}
\examples{

exprs <- qae(Sepal_Long := Sepal.Length >= ratio * Sepal.Width,
             Petal_Short = Petal.Length <= 3.5)
print(exprs)
#ratio <- 2
#datasets::iris \%.>\%
#  seplyr::mutate_se(., exprs) \%.>\%
#  summary(.)

}
\seealso{
\code{\link{qc}}, \code{\link{qe}}
}
