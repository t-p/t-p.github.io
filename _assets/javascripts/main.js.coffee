#= require vendor/jquery-1.11.2

$ ->
  "use strict"
  $(document).ready ->
    $(".post-content").fitVids()

    # Calculates Reading Time
    $(".post-meta-text").readingTime
      readingTimeTarget: ".post-reading-time"
      wordCountTarget: ".post-word-count"
