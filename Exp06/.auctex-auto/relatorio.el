(TeX-add-style-hook
 "relatorio"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "brazil" "american") ("inputenc" "utf8") ("enumitem" "shortlabels")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "sbc-template"
    "babel"
    "inputenc"
    "graphicx"
    "url"
    "float"
    "listings"
    "color"
    "todonotes"
    "algorithmic"
    "algorithm"
    "hyperref"
    "amsmath"
    "array"
    "mwe"
    "enumitem"
    "xcolor"
    "trace")
   (TeX-add-symbols
    "colorIndex")
   (LaTeX-add-labels
    "sec:Introducao"
    "fig:mux.png"
    "fig:mux_wiki.png"
    "fig:mux_demux.png"
    "fig:demux.png"
    "fig:decoder.png"
    "sec:Objetivos"
    "sec:Materiais"
    "sec:Procedimentos"
    "sec:2.1"
    "code:mux8"
    "tab:truth_table_full_adder"
    "fig:2_1_Circuit.png"
    "fig:2_1_Functional_Foto.jpg"
    "fig:2_1_Timing_Foto.jpg"
    "sec:2.2"
    "code:full_adder"
    "fig:2_2_Functional_Foto.jpg"
    "fig:2_2_Timing_Foto.jpg"
    "sec:2.3"
    "fig:2_3_Circuit.png"
    "fig:2_3_Functional_Foto.jpg"
    "fig:2_3_Timing_Foto.jpg"
    "sec:resultados"
    "sec:analise2.1"
    "sec:analise2.4"
    "sec:Conclusao")
   (LaTeX-add-bibliographies)
   (LaTeX-add-listings-lstdefinestyles
    "verilog-style")
   (LaTeX-add-color-definecolors
    "vgreen"
    "vblue"
    "vorange"))
 :latex)

