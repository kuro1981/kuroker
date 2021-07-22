FROM rockerjp/tidyverse:latest

RUN set -x \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
    && apt-get clean

RUN set -x \
  # Install and configure R packages
  && r -e "options(Ncpus = max(1L, parallel::detectCores())); remotes::install_github('kuro1981/kuroker', upgrade = 'always', dependencies = TRUE)" \
  # atusyverse as a default package, and prettycode in default
  && echo \
    "options(defaultPackages = c(getOption('defaultPackages'), 'kuroker'[interactive()])); prettycode::prettycode()" \
    >> /usr/local/lib/R/etc/Rprofile.site
RUN Rscript -e "install.packages(c('testthat', 'bench', 'RColorBrewer', 'ggExtra', 'viridis',))"