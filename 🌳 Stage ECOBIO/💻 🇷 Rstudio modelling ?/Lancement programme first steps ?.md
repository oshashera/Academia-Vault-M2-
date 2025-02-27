
#### Faire checker si packages manquants : 

```R
# Define the list of required packages for mine to work
required_packages <- c("x", "y", "z")

# Get the user's R version
r_version <- getRversion()


# Define function to check package availability and install 

install_compatible_packages <- function(packages, r_version) {
  # Get available packages from CRAN repo
  cran_packages <- available.packages(repos = "https://cran.r-project.org")
  # Loop for the packages in the list
  for (pkg in packages) {
    # Check if the package is available for the user's R version in the CRAN repo
    pkg_info <- cran_packages[cran_packages[, "Package"] == pkg, ]

    if (nrow(pkg_info) == 0) {
      warning(paste("Package", pkg, "is not available for R version", r_version)) # Warn user required packages not available
    } else {
      # Check if the package is already installed with requireNamespace => if true then no install
      if (!requireNamespace(pkg, quietly = TRUE)) {
        # Install the package if missing 
        install.packages(pkg, dependencies = TRUE, repos = "https://cran.r-project.org")
      } else {
        message(paste("Package", pkg, "is already installed for this version of R (",r_version,")"))
      }
    }
  }
}

# Install compatible packages
install_compatible_packages(required_packages, r_version)

# Load the packages
lapply(required_packages, library, character.only = TRUE)  #lapply apply for a list a function (here library), with 'character.only=TRUE' as a parameter for library (to use the name of the package w/ a string)
```

🇷