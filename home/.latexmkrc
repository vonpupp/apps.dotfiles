#$pdf_previewer = "start xpdf -remote %R %O %S";
$pdf_previewer = "start zathura";
#$pdf_previewer = "okular %R %O %S";
$pdf_update_method = 4;
#$pdf_update_command = "xpdf -remote %R -reload -raise";
#$pdflatex = 'pdflatex --shell-escape $$i';
$pdflatex = 'pdflatex -8bit -etex -file-line-error -halt-on-error -synctex=1 %O %S';
