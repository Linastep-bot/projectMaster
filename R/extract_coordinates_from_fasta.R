#' Extract coordinates from fasta files
#'
#' @param fasta_file fasta files.
#'
#' @return coordinates_df
#' @export
#' @import Biostrings
#'
#' @examples \dontrun{extract_coordinates_from_fasta(fasta_file)}

extract_coordinates_from_fasta <- function(fasta_file) {
  fasta_sequences <- readDNAStringSet(fasta_file)
  header <- names(fasta_sequences)
  start <- c()
  stop <- c()
  for (i in 1:length(fasta_sequences)) {
    sequence <- fasta_sequences[[i]]
    start[i] <- start(sequence)
    stop[i] <- end(sequence)
  }
  coordinates_df <- data.frame(
    header = header,
    start = start,
    stop = stop
  )
  return(coordinates_df)
}
