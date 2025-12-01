#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=#
#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#                          NOXALIS R PACKAGE                                   #
#                            version 1.0.0                                     #
#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=#

# Author: Jitse Creemers
# Publishing date: 28-11-2025
# Last updated: 28-11-2025

# The **Noxalis** R package is designed to streamline and standardize data 
# analysis workflows within the Nox'alis research group. It provides a collection
# of tools tailored specifically to the types of data and analyses commonly 
# performed by the group, allowing researchers to efficiently manage, process,
# and analyze their datasets in a consistent and reproducible manner.

# The package is organized into four main functional areas: 

# **1. Data Management**
# Functions in this group assist with general data handling, cleaning, and
# preparation, providing a foundation for reliable downstream analyses.

# **2. Capture-Mark-Recapture**
# These functions are used to manipulate capture-mark-recapture data and extract
# information from this ringing data to add to other datasets.

# **3. Movement Analysis**
# This set of functions is designed to process and analyze movement data, such as
# GPS tracking or accelerometer recordings, enabling robust behavioral and spatal
# analyses.

# **4. Light Environment**
# These functions focus on quantifying and analyzing light-related data, helping
# researchers interpret the environmental context of their studies.

#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=#
#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-#


# 1.) OVERVIEW OF THE FUNCTIONS [L.48]
# 2.) OVERVIEW OF THE AVAILABLE DATA [L.111]
# 3.) FUNCTIONAL WORKFLOW [L.125]
# 4.) NOTES TO THE AUTHOR [L.129]


# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= #
#                        OVERVIEW OF THE FUNCTIONS                             #               
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= #

# The following section provides a summary of all functions included in the
# *Noxalis* R package. Each function is grouped according to its primary purpose 
# and includes information on:

# *Input:* The type of data or objects the function requires (e.g., data frames,
# GPS tracks, light measurements, ...)

# *Output:* The type of result produced (e.g., processed data, summary statistics,
# plots).

# *Purpose:* The general goal of the function and how it contributes to the
# workflow.

# This overview is intended to help users quickly identify which functions are
# relevant for their specific tasks and understand the expected data flow through 
# the package. Each function is designed to work seamlessly within its group and,
# where appropriate, with other functions across groups, promoting a consistent 
# and reproducible workflow.

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #
#                         GROUP 1. DATA MANAGEMENT                             #
# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #

# ------------------------------------------------------------------------------
#
# packages(
#   pkgs = NULL
# )
#
# A helper function to automate package installation and loading while 
# providing clean, user-friendly output. The function:
#  1. Accepts a character vector of package names.
#  2. Installs missing packages (silently).
#  3. Loads each package quietly, suppressing startup messages.
#  4. Returns a data.frame summarizing:
#          - package name
#          - installed version
#          - installation success (TRUE/FALSE)
#          - loading success (TRUE/FALSE)
#
# This makes dependency handling reproducible and transparant.
#
# ------------------------------------------------------------------------------
#
#

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #
#                       GROUP 2. CAPTURE-MARK-RECAPTURE                        #
# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #
#                         GROUP 3. MOVEMENT ANALYSIS                           #
# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #
#                         GROUP 4. LIGHT ENVIRONMENT                           #
# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #


# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= #
#                       OVERVIEW OF THE AVAILABLE DATA                         #               
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= #

# The *Noxalis* R package includes a selection of curated datasets that are used 
# for demonstration, testing, and reference purposes. These datasets reflect the 
# types of data commonly analyzed by the Nox'alis research group and provide users
# with ready-to-use examples to explore the package's functions.

# Each dataset is accompanied by documentation describing its structure, variables,
# and typical use cases. These resources allow users to quickly familiarize 
# themselves with the data formats and workflows supported by the package.


# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= #
#                             FUNCTIONAL WORKFLOW                              #               
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= #

# This section presents all the core functions included in the *Noxalis* R
# package. Each function is documented with its inputs, outputs, and purpose, 
# allowing users to efficiently apply them to their data. Functions are grouped
# by their primary focus: data management, capture-mark-recapture, movement 
# analysis, and light environment.

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #
#                         GROUP 1. DATA MANAGEMENT                             #
# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #

# This section contains functions designed to streamline the organization, cleaning,
# and preparation of data used throughout the _Noxalis_ package. These tools ensure
# that raw inputs, such as spatial layers, species observations, ringing data, 
# and environmental covariates, are structured in a consistent and analysis-ready
# format. The functions help automate routine processing steps, enforce standardized
# metadata conventions, and facilitate seamless integration of the package's 
# diverse datasets. Together, they provide a reliable foundation for downstream
# analytical workflows and reproducible research. 

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #

# ==============================================================================
#
# packages(
#   pkgs = NULL
# )
#
# A helper function to automate package installation and loading while 
# providing clean, user-friendly output. The function:
#  1. Accepts a character vector of package names.
#  2. Installs missing packages (silently).
#  3. Loads each package quietly, suppressing startup messages.
#  4. Returns a data.frame summarizing:
#          - package name
#          - installed version
#          - installation success (TRUE/FALSE)
#          - loading success (TRUE/FALSE)
#
# This makes dependency handling reproducible and transparant.
#
# ------------------------------------------------------------------------------

packages <- function(pkgs) {
  
  # Ensure user supplied a character vector
  if (!is.character(pkgs)) {
    stop("Input must be a character vector of package names.")
  }
  
  # Prepare an emptry results list to store status for each package
  results <- vector("list", length(pkgs))
  
  # Loop over each requested package
  for (i in seq_along(pkgs)) {
    
    pkg <- pkgs[i]
    
    # ------------------------------------------------
    # Step 1. Check if package is already installed.
    # ------------------------------------------------
    is_installed <- pkg %in% rownames(installed.packages())
    
    install_success <- FALSE
    load_success <- FALSE
    
    # --------------------------------------------------
    # Step 2. Install the package (only if missing)
    # --------------------------------------------------
    if (!is_installed) {
      install_attempt <- try(
        suppressWarnings(
          utils::install.packages(pkg, quiet = TRUE)
        ),
        silent = TRUE  # hides errors from being printed
      )
      
      # If no error occurred during installation:
      install_success <- !inherits(install_attempt, "try-error")
      
      # If installation succeeded, mark package as "installed" now
      if (install_success) {
        is_installed <- TRUE
      }
    } else {
      # Package already installed: treat as successful 
      install_success <- TRUE
    }
    
    # --------------------------------------------------
    # Step 3. Load the package using library()
    # --------------------------------------------------
    if (is_installed) {
      load_attempt <- suppressWarnings(
        suppressMessages(
          require(pkg, character.only = TRUE)
        )
      )
      load_success <- isTRUE(load_attempt)
    }
    
    # ------------------------------------------------------------------
    # Step 4. Retrieve installed version of the package
    #         If loading failed, version may still be retrieved from 
    #         install.packages()
    # ------------------------------------------------------------------
    version <- NA
    if (is_installed) {
      version <- as.character(
        utils::packageVersion(pkg)
      )
    }
    
    # Store results for this package
    results[[i]] <- list(
      package = pkg,
      version = version,
      installed = install_success,
      loaded = load_success
    )
  }
  
  # Convert the list of results to a clean data.frame
  output <- do.call(rbind, lapply(results, as.data.frame))
  rownames(output) <- NULL
  
  return(output)
}

# ------------------------------------------------------------------------------
#
# Example usage: 
# packages(
#    pkgs = c("sf", "terra", "ggplot2", "dplyr")
# )
#
# ==============================================================================

# ----

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #
#                       GROUP 2. CAPTURE-MARK-RECAPTURE                        #
# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #
#                         GROUP 3. MOVEMENT ANALYSIS                           #
# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #
#                         GROUP 4. LIGHT ENVIRONMENT                           #
# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_ #


# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= #
#                              NOTES TO THE AUTHOR                             #               
# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= #

# This section serves as an internal workspace for the package author. It is a 
# place to record ideas, planned improvements, known issues, and any other notes
# relevant to the ongoing development of the *Noxalis* R package. These notes 
# are not intended for end-users but function as a reminder system and drafting
# area to support future updates and refinements. 

# -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= #
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- #

# 
#
#
#
#

