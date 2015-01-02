#= require vendor/jquery-1.11.2

$ ->
  "use strict"
  $(document).ready ->
    $(".post-content").fitVids()

    # Calculates Reading Time
    $(".post-meta-text").readingTime
      readingTimeTarget: ".post-reading-time"
      wordCountTarget: ".post-word-count"

    # Creates Captions from Alt tags
    $(".post-content img").each ->

      # Let's put a caption if there is one
      $(@).wrap("<figure class=\"image\"></figure>").after "<figcaption>" + $(@).attr("alt") + "</figcaption>"  if $(@).attr("alt")
