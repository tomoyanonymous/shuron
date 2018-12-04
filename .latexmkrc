#!/usr/bin/env perl
$latex            = 'pdflatex';
$bibtex           = 'bibtex';
$biber            = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode         = 1;
$pvc_view_file_via_temporary = 0;
$pdf_previewer    = "open /Applications/Google\ Chrome.app";
$out_dir = '../pdf';
