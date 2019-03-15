#!/usr/bin/env racket

#lang racket

(call-with-output-file "example.html"
  (lambda (o)
    (fprintf o "<!DOCTYPE html>
    <html lang=\"en\">
    <head>
    </head>
    <body>
    <h1>Nothing special</h1>
    <p>Nothing special, really!</p>
    </body>
    </html>"))
    #:exists 'replace)

