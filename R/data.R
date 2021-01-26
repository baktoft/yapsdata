#' Test data from Lake Hald, Denmark
#'
#' 
#' 
#' @format A list containing various data from a study in Lake Hald (DK):
#' \describe{
#'   \item{hydros}{
#'     \itemize{
#'        \item serial Hydrophone serial number.
#'        \item x,y,z Position of hydrophones in UTM.
#'        \item sync_tag ID of co-located sync tag. Must be identical to entries in data.table detections$tag.
#'        \item idx Unique values from 1:nrow(hydros).
#'      }
#'   }
#'   \item{detections}{
#'     \itemize{
#'        \item ts Timestamp of detection in POSIXct().
#'        \item tag ID of detected tag.
#'        \item epo Timestamp as number of seconds since Unix epoch. Can be obtained using as.numeric(ts).
#'        \item frac Sub-second part of detection timestamp in fractions of second (i.e. 0-1).
#'        \item serial Serial number of detecting hydrophone. Must match entry in data.table hydros.
#'      }
#'   }
#'   \item{sync_model}{
#'     \itemize{
#'        \item A complete fitted sync_model obtained using yaps::getSyncModel()
#'      }
#'   }
#'   \item{fish}{
#'     \itemize{
#'        \item data.table containing meta data about a small sample of tagged fish.
#'      }
#'   }
#'   \item{burst_seqs}{
#'     \itemize{
#'        \item list of known burst sequences for the sample of tagged fish.
#'      }
#'   }
#' }
"hald"