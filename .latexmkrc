#!/usr/bin/env perl
$latex            = 'platex -synctex=1 -halt-on-error';
$latex_silent     = 'platex -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex           = 'biblatex';
$biber            = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode         = 3;
$pvc_view_file_via_temporary = 0;
$clean_ext = "bbl nav out snm";
# $pdf_previewer    = "open /Applications/Google\ Chrome.app";
$out_dir = '../pdf';

# $compiling_cmd = "make md"
add_cus_dep( 'md', 'tex', 1, 'pandoc' );
sub pandoc {
     system( 'make md' );
 }

show_cus_dep();
