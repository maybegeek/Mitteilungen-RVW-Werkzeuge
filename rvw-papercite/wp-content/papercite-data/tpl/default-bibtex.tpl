    @{group@
    @?groupkey@<div class="row bib-group"><div class="c2 papercite_year"><h3 class="papercite">@groupkey@</h3></div>@;groupkey@
    <div class="c10 bib-border">
    <ul class="papercite_bibliography">
     @{entry@ <li>
	@?doi@<a href='http://dx.doi.org/@doi@' class='papercite_doi' title='View document on publisher site'><img src='@WP_PLUGIN_URL@/papercite/img/external.png' width='10' height='10' alt='[DOI]' /></a>@;doi@
    	@#entry@ <a href="javascript:void(0)" id="papercite_@papercite_id@" class="papercite_toggle">[<span class="tex"><span class="lsp">B<span class="sc">ib</span></span>T<sub>e</sub>X</span>]</a> @?pdf@ / <a href="@pdf@" title='Download PDF' class='papercite_pdf'>link</a>@;pdf@
	 <div class="papercite_bibtex" id="papercite_@papercite_id@_block"><pre><code class="tex bibtex">@bibtex@</code></pre></div>
        </li>
     @}entry@
    </ul>
    </div>
    </div>
    @}group@
