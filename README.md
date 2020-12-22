
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rmdprotectr

<!-- badges: start -->

<!-- badges: end -->

The goal of `rmdprotectr` is to password protect Rmarkdown HTML
documents.

> Very simple password protection to static pages or whole websites with
> no server configuration required: you can use Dropbox, Amazon S3 or
> any generic hosting service to host a private, password protected
> site.

## Installation

You can install the development version of rmdprotectr from
[GitHub](https://github.com/favstats/rmdprotectr) with:

``` r
remotes::install_github("rmdprotectr")
```

## How to Use

``` r
library(rmdprotectr)

## provide a path to your .Rmd and it will be rendered in the correct folder
protect_rmd("test.Rmd", pw = "somefancypw")
```

You are set\! Push to private GitHub repo and activate GitHub pages or
whatever hosting service you prefer\!

### Things to consider

  - If your hosting service offers directory listing, a visitor can
    bypass the protection.
  - there’s no protection against brute force attack. Pick a very long
    and hard to guess password.
  - Pasting the link directly to someone will bypass the login

Credit to
[matteobrusa](https://github.com/matteobrusa/Password-protection-for-static-pages)
and
[scottishstoater](https://github.com/scottishstoater/protected-github-pages)
for their initial findings and implementation.
