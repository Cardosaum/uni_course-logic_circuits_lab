(TeX-add-style-hook
 "relatorio"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "brazil" "american") ("inputenc" "utf8") ("enumitem" "shortlabels")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
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
    "sec:atraso_de_propagação"
    "eq:L0"
    "tab:atraso_de_propagação:L0_L1"
    "fig:exp4_2.0_b_clk_up_phone.png"
    "fig:exp4_2.0_b_clk_down_phone.png"
    "fig:exp4_2.0_c_clk_wave_phone.png"
    "fig:exp4_2.0_c_clk_wave_lenght_phone.png"
    "fig:exp4_2.0_d_clk_circuito_ao_voltar_para_zero.png"
    "fig:exp4_2.0_d_clk_wave_ao_voltar_para_zero.png"
    "fig:exp4_2.0_d_clk_wave_lenght_ao_voltar_para_zero.png"
    "fig:exp4_2.0_e_clk_circuito.png"
    "fig:exp4_2.0_e_clk_circuito_wave.png"
    "sec:comparador_de_palavras_3_bits"
    "tab:comparador_de_palavras_3_bits"
    "fig:exp4_2.1_d_circuito.png"
    "fig:Comparador1Bit.png"
    "sec:Resultados"
    "sec:Conclusao")
   (LaTeX-add-bibliographies))
 :latex)

