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
    "enumitem")
   (LaTeX-add-labels
    "sec:Introducao"
    "sec:Objetivos"
    "sec:Materiais"
    "sec:Procedimentos"
    "sec:2.1"
    "tab:tabela_and"
    "fig:subComparador2.1"
    "sec:2.2"
    "fig:2.2.png"
    "sec:2.3"
    "fig:Exp5__2_3_block.png"
    "sec:2.4"
    "fig:Exp5__2_4_circuit.png"
    "fig:Exp5__2_4_wave.png"
    "tab:truth_table_decoder"
    "sec:2.5"
    "fig:Exp5__2_5_circuit.png"
    "sec:resultados"
    "sec:analise2.1"
    "sec:analise2.4"
    "sec:analise2.5"
    "sec:Conclusao")
   (LaTeX-add-bibliographies))
 :latex)

