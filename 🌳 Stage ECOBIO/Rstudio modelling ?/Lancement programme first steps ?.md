Faire checker si packages manquants : 

```R
# Define the list of required packages for mine to work
required_packages = c("x", "y", "z")

# Function to check and install missing packages
install_if_missing = function(packages) {
  for (package_name in packages) {  # Loop through each package name
    if (!requireNamespace(package_name, quietly = TRUE)) {  # Check if the package is installed
      install.packages(package_name, dependencies = TRUE)  # Install if missing
    }
  }
}

# Install missing packages
install_if_missing(required_packages)

# Load the packages
lapply(required_packages, library, character.only = TRUE)
```
