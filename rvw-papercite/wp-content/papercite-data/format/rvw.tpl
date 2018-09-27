<formats>

<property name="titleCapitalization" value="0"/>
<property name="primaryCreatorFirstStyle" value="1"/>
<property name="primaryCreatorOtherStyle" value="1"/>
<property name="primaryCreatorInitials" value="0"/>
<property name="primaryCreatorFirstName" value="0"/>
<property name="otherCreatorFirstStyle" value="0"/>
<property name="otherCreatorOtherStyle" value="0"/>
<property name="otherCreatorInitials" value="0"/>
<property name="dayFormat" value="0"/>
<property name="otherCreatorFirstName" value="1"/>
<property name="monthFormat" value="1"/>
<property name="editionFormat" value="1"/>
<property name="dateFormat" value="1"/>

<property name="primaryCreatorList" value="1"/>
<property name="primaryCreatorListMore" value="2"/>
<property name="primaryCreatorListLimit" value="1"/>
<property name="primaryCreatorListAbbreviation" value=" et al."/>

<property name="otherCreatorList" value="1"/>
<property name="otherCreatorListMore" value="2"/>
<property name="otherCreatorListLimit" value="1"/>
<property name="otherCreatorListAbbreviation" value=" et al."/>

<property name="runningTimeFormat" value="1"/>
<property name="primaryCreatorRepeatString" value=""/>
<property name="primaryCreatorRepeat" value="0"/>
<property name="pageFormat" value="2"/>
<property name="editorSwitch" value="1"/>
<property name="editorSwitchIfYes" value="editor (^Hg.^Hg.^). "/>
<property name="primaryCreatorSepFirstBetween" value="; "/>
<property name="primaryCreatorSepNextBetween" value="; "/>
<property name="primaryCreatorSepNextLast" value=" &amp; "/>
<property name="otherCreatorSepFirstBetween" value="; "/>
<property name="otherCreatorSepNextBetween" value="; "/>
<property name="otherCreatorSepNextLast" value=" &amp; "/>
<property name="primaryTwoCreatorsSep" value=" &amp; "/>
<property name="otherTwoCreatorsSep" value=" &amp; "/>
<property name="userMonth_1" value=""/>
<property name="userMonth_2" value=""/>
<property name="userMonth_3" value=""/>
<property name="userMonth_4" value=""/>
<property name="userMonth_5" value=""/>
<property name="userMonth_6" value=""/>
<property name="userMonth_7" value=""/>
<property name="userMonth_8" value=""/>
<property name="userMonth_9" value=""/>
<property name="userMonth_10" value=""/>
<property name="userMonth_11" value=""/>
<property name="userMonth_12" value=""/>
<property name="dateRangeDelimit1" value="-"/>
<property name="dateRangeDelimit2" value="-"/>
<property name="dateRangeSameMonth" value="1"/>

<format types="proceedings unpublished">
@?author@@author@. @;@@?year@(@year@). @;@@?title@&lt;span class=&quot;bib-em&quot;&gt;@title@&lt;/span&gt;. @;@@?address@@address@: @;@@?publisher@@publisher@@;@.
</format>

<format types="misc">
@?author@@author@ @:@@?editor@@editor@ (@?#editor&gt;1@Hg.@:editor@Hg.@;editor@) @;editor@@;author@@?year||date@(@:@@;@@?year@@year@@;@@?date@, @date@@;@@?year||date@). @:@@;@@?title@@?edition@@:@@;edition@&lt;span class=&quot;bib-em&quot;&gt;@title@&lt;/span&gt;@?series@ (= @series@@?number@, @number@@;number@)@;series@. @;@@?note@@note@. @;note@@?howpublished@@howpublished@. @;howpublished@@?address@@address@: @;@@?publisher@@publisher@.@;@@?type@ [@type@].@;@
</format>

<format types="book">
&lt;span class=&quot;bib-rvw&quot;&gt;
@?author@@author@ @:@@;author@
@?editor@@editor@ (@?#editor&gt;1@Hg.@:editor@Hg.@;editor@)@;editor@
@?year@(@year@). @;year@
@?title@&lt;span class=&quot;bib-em&quot;&gt;@title@&lt;/span&gt;@;@@?series@ (= @series@@?number@, @number@@;number@)@;series@@?edition||volume@ (@:@@;@@?edition@@edition@ ed.@?volume@ @:@@;volume@@;@@?volume@Vol. @volume@@;@@?edition||volume@)@:@@;@@?address@. @address@: @;@@?publisher@@publisher@@;@.
&lt;/span&gt;
</format>

<format types="inbook incollection">
@?author@@author@ @;author@
@?year@(@year@). @;year@
@?title@@title@. @;title@
@?editor@In: @editor@ (@?#editor&gt;1@Hg.@:editor@Hg.@;editor@). @;editor@
@?booktitle@@?edition@@:@@;edition@&lt;span class=&quot;bib-em&quot;&gt;@booktitle@&lt;/span&gt;@?series@ (= @series@@?number@, @number@@;number@)@;series@. @;@     @?note@@note@. @;note@@?address@@address@: @;@@?publisher@@publisher@@;@.@?edition||volume||pages@ @:@@;@@?edition@@edition@ ed.@;@@?volume@@?pages@, @:@@;pages@Vol. @volume@@;@@?pages@@?address@@:@@;address@&lt;span class=&quot;nowrap&quot;&gt;S.&lt;span class=&quot;bib-spatium&quot;&gt;&lt;/span&gt;@pages@&lt;/span&gt;@;@@?edition||volume||pages@@:@@;@.
</format>


<format types="collection">
@?editor@@editor@ (@?#editor&gt;1@Hg.@:editor@Hg.@;editor@) @;@@?year@(@year@). @;@@?title@@?edition@@:@@;edition@&lt;span class=&quot;bib-em&quot;&gt;@title@&lt;/span&gt;@?series@ (= @series@@?number@, @number@@;number@)@;series@. @;@@?note@@note@. @;note@@?address@@address@: @;@@?publisher@@publisher@@;@.
</format>



<format types="article #">
@?author@@author@@;author@
@?year@(@year@@?note@ @note@@;note@).@;year@
@?title@@title@.@;title@
@?journal@In: &lt;span class=&quot;bib-em&quot;&gt;@journal@&lt;/span&gt;@?volume@, @volume@@;volume@@?number@(@number@)@;number@@;journal@@?pages@. S.&lt;span class=&quot;bib-spatium&quot;&gt;&lt;/span&gt;@pages@@;pages@.
</format>

<format types="inproceedings">
@?author@@author@. @;@@?year||date@(@:@@;@@?year@@year@@;@@?date@, @date@@;@@?year||date@). @:@@;@@?title@&lt;span class=&quot;bib-em&quot;&gt;@title@&lt;/span&gt;. @;@@?booktitle@Paper presented at the @booktitle@@;@@?address@, @address@@;@.
</format>

<format types="phdthesis mastersthesis">
@?author@@author@. @;@@?year||title@(@:@@;@@?year@(@year@)@?title@. @:@.@;title@@;@@?title@&lt;span class=&quot;bib-em&quot;&gt;@title@&lt;/span&gt;.@;@@?year||title@). @:@@;@@?type@Unpublished @type@ @;@@?entrytype=phdthesis||entrytype=mastersthesis@@?entrytype=phdthesis@PhD Thesis@;@@?entrytype=mastersthesis@Master Thesis@;@@;@@?institution@, @institution@@;@@?address@, @address@@;@.
</format>

<format types="techreport">
@?author@@author@. @;@@?year@(@year@). @;@@?title@&lt;span class=&quot;bib-em&quot;&gt;@title@&lt;/span&gt; @;@@?type||number@(@:@@;@@?type@@type@@;@@?number@@?address@ @:@@;address@No. @number@@;@@?type||number@). @:@@;@@?address@@address@: @;@@?institution@@institution@@;@.
</format>

</formats>
