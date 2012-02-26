/*************************************************************************

    File: englishGrammar.pl
    Copyright (C) 2004,2005,2006 Patrick Blackburn & Johan Bos

    This file is part of BB1, version 1.3 (November 2006).

    BB1 is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    BB1 is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with BB1; if not, write to the Free Software Foundation, Inc.,
    59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

*************************************************************************/

/*========================================================================
   Texts
========================================================================*/

fr_t([sem:T])-->
   fr_s([coord:no,sem:S]),
   {combine(fr_t:T,[fr_s:S])}.

fr_t([sem:T])-->
   fr_s([coord:yes,sem:S]),
   {combine(fr_t:T,[fr_s:S])}.



/*========================================================================
   Sentences
========================================================================*/

fr_s([coord:no,sem:Sem])-->
   fr_np([coord:_,num:Num,per:Per,gap:[],sem:NP]),
   fr_vp([coord:_,inf:fin,num:Num,per:Per,gap:[],sem:VP]),
   {combine(fr_s:Sem,[fr_np:NP,fr_vp:VP])}.

fr_s([coord:yes,sem:Sem])-->
   fr_s([coord:ant,sem:S1]),
   fr_s([coord:con,sem:S2]),
   {combine(fr_s:Sem,[fr_s:S1,fr_s:S2])}.

fr_s([coord:yes,sem:Sem])-->
   fr_s([coord:either,sem:S1]),
   fr_s([coord:or,sem:S2]),
   {combine(fr_s:Sem,[fr_s:S1,fr_s:S2])}.


/*========================================================================
   Noun Phrases
========================================================================*/

/*
fr_np([coord:no,num:sg,per:one,gap:[fr_np:NP],sem:NP])--> [].
fr_np([coord:no,num:sg,per:two,gap:[fr_np:NP],sem:NP])--> [].
fr_np([coord:no,num:sg,per:thr,gap:[fr_np:NP],sem:NP])--> [].
fr_np([coord:no,num:pl,per:one,gap:[fr_np:NP],sem:NP])--> [].
fr_np([coord:no,num:pl,per:two,gap:[fr_np:NP],sem:NP])--> [].
fr_np([coord:no,num:pl,per:thr,gap:[fr_np:NP],sem:NP])--> [].
*/



fr_np([coord:no,num:Num,per:Per,gap:[],sem:NP])-->
   fr_pn([num:Num,per:Per,sem:PN]),
   {combine(fr_np:NP,[fr_pn:PN])}.
/*
fr_np([coord:no,num:pl,per:thr,gap:[],sem:NP])-->
   fr_n([coord:no,num:,per:thr,sem:N]),
   {combine(np:NP,[n:N])}.
*/

fr_np([coord:no,num:Num,per:Per,gap:[],sem:NP])-->
   fr_det([mood:decl,type:_,num:Num,gen:Gen,sem:Det]),
   fr_n([coord:no,num:Num,per:Per,gen:Gen,sem:N]),
   {combine(fr_np:NP,[fr_det:Det,fr_n:N])}.
   
/*========================================================================
   Determiner Phrase
========================================================================*/   
/*
fr_dp([coord:no,num:Num,per:Per,sem:DP])-->
    fr_det([mood:decl,type:_,num:Num,gen:Gen,sem:Det]),
    fr_n([coord:no,num:Num,per:Per,gen:Gen,sem:N]),
    {combine(fr_dp:DP,[det:Det,fr_n:N])}.
*/

/*========================================================================
   Nouns
========================================================================*/

fr_n([coord:no,num:Num,per:Per,gen:Gen,sem:N])-->
   fr_noun([num:Num,per:Per,gen:Gen,sem:Noun]),
   {combine(fr_n:N,[fr_noun:Noun])}.




/*========================================================================
   Verb Phrases
========================================================================*/

fr_vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   fr_iv([inf:Inf,num:Num,per:Per,sem:IV]),
   {combine(fr_vp:VP,[fr_iv:IV])}.

fr_vp([coord:no,inf:I,num:Num,per:Per,gap:G,sem:VP])-->
   fr_tv([inf:I,num:Num,per:Per,sem:TV]),
   fr_np([coord:_,num:_,per:_,gap:G,sem:NP]),
   {combine(fr_vp:VP,[fr_tv:TV,fr_np:NP])}.

/*

vp([coord:yes,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP1]),
   coord([type:_,sem:C]),
   vp([coord:_,inf:Inf,num:Num,gap:[],sem:VP2]),
   {combine(vp:VP,[vp:VP1,coord:C,vp:VP2])}.



vp([coord:no,inf:Inf,num:Num,gap:[],sem:VP])-->
   cop([inf:Inf,num:Num,sem:Cop]),
   np([coord:_,num:_,gap:[],sem:NP]),
   {combine(vp:VP,[cop:Cop,np:NP])}.

vp([coord:yes,inf:Inf,num:Num,gap:[],sem:VP])-->
   vp([coord:no,inf:Inf,num:Num,gap:[],sem:VP1]),
   coord([type:_,sem:C]),
   vp([coord:_,inf:Inf,num:Num,gap:[],sem:VP2]),
   {combine(vp:VP,[vp:VP1,coord:C,vp:VP2])}.
*/

/*========================================================================
   Lexical Rules
========================================================================*/

fr_iv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(fr_iv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(fr_iv,[symbol:Sym,sem:Sem])}.


fr_tv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(fr_tv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(fr_tv,[symbol:Sym,sem:Sem])}.


/*

cop([inf:Inf,num:Num,sem:Sem])-->
   {lexEntry(cop,[pol:Pol,syntax:Word,inf:Inf,num:Num])}, % why no number in copula?
   Word,
   {semLex(cop,[pol:Pol,sem:Sem])}.
*/

fr_pn([num:Num,per:Per,sem:Sem])-->
   {lexEntry(fr_pn,[symbol:Sym,syntax:Word,num:Num,per:Per])},
   Word,
   {semLex(fr_pn,[symbol:Sym,sem:Sem])}.

fr_noun([num:Num,per:Per,gen:Gen,sem:Sem])-->
  {lexEntry(fr_noun,[symbol:Sym,syntax:Word,num:Num,per:Per,gen:Gen])},
  Word,
  {semLex(fr_noun,[symbol:Sym,sem:Sem])}.

fr_coord([type:Type,sem:Sem])-->
   {lexEntry(fr_coord,[syntax:Word,type:Type])},
   Word,
   {semLex(fr_coord,[type:Type,sem:Sem])}.

fr_det([mood:M,type:Type,num:Num,gen:Gen,sem:Det])-->
   {lexEntry(fr_det,[syntax:Word,mood:M,type:Type,num:Num,gen:Gen])},
   Word,
   {semLex(fr_det,[type:Type,sem:Det])}.





