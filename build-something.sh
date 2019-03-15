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
    <p>e^(i pi) = -1 on Pi Day</p>
    </body>
    </html>"))
    #:exists 'replace)

