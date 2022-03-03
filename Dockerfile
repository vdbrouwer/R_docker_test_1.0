FROM rocker/r-ver:4.0.3
LABEL maintainer="Vincent"
RUN ["install2.r", "dplyr", "rlang", "tibble"]
WORKDIR /payload/
CMD ["R", "--vanilla", "-f", "containerit_456c58cb4693.R"]
