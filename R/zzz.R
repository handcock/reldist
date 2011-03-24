#==============================================================================
# This file contains the following 2 conventional functions used by R to load
# and unload packages:
#             <.First.lib>
#             <.Last.lib>
#==============================================================================



###############################################################################
# The <.First.lib> function loads the compiled reldist code and prints the
# copyright information; <.First.lib> is called when reldist is loaded by library()
#
# --PARAMETERS--
#   lib: the name of the library directory where 'pkg' is stored
#   pkg: the name of the package
#
# --RETURNED--
#   a libraryIQR object
#
###############################################################################

.First.lib <- function(lib, pkg){
# library.dynam("reldist", pkg, lib)
  DESCpath <- file.path(system.file(package="reldist"), "DESCRIPTION")
  info <- read.dcf(DESCpath)
  cat('\nreldist:', info[,"Title"], 
      '\nVersion', info[,"Version"], 'created on', info[,"Date"], '\n') 
  cat(paste("copyright (c) 2003, Mark S. Handcock, University of California-Los Angeles\n",sep=""))
  cat('Type help(package="reldist") to get started.\n\n')
  cat('For license and citation information type citation("reldist").\n')
}



#############################################################
# The <.Last.lib> function unloads the compiled reldist code
#
# --PARAMETERS--
#   libpath: the complete path to the package, as a string
#############################################################

#.Last.lib <- function(libpath){
#  library.dynam.unload("reldist",libpath)
#}
