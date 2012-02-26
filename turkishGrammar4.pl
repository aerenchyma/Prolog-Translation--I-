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

tur_t([sem:T])-->
   tur_s([coord:no,sem:S]),
   {combine(tur_t:T,[tur_s:S])}.

tur_t([sem:T])-->
  tur_s([coord:yes,sem:S]),
   {combine(tur_t:T,[tur_s:S])}.



/*========================================================================
   Sentences
========================================================================*/

tur_s([coord:no,sem:Sem])-->
   tur_np([coord:_,num:Num,per:Per,case:nom,gap:[],sem:NP]),
   tur_vp([coord:_,inf:fin,num:Num,per:Per,gap:[],sem:VP]),
   {combine(tur_s:Sem,[tur_np:NP,tur_vp:VP])}.

tur_s([coord:yes,sem:Sem])-->
   tur_s([coord:ant,sem:S1]),
   tur_s([coord:con,sem:S2]),
   {combine(tur_s:Sem,[tur_s:S1,tur_s:S2])}.

tur_s([coord:yes,sem:Sem])-->
   tur_s([coord:either,sem:S1]),
   tur_s([coord:or,sem:S2]),
   {combine(tur_s:Sem,[tur_s:S1,tur_s:S2])}.


/*========================================================================
   Noun Phrases
========================================================================*/


tur_np([coord:no,num:sg,per:one,gap:[tur_np:NP],sem:NP])--> [].
tur_np([coord:no,num:sg,per:two,gap:[tur_np:NP],sem:NP])--> [].
tur_np([coord:no,num:sg,per:thr,gap:[tur_np:NP],sem:NP])--> [].
tur_np([coord:no,num:pl,per:one,gap:[tur_np:NP],sem:NP])--> [].
tur_np([coord:no,num:pl,per:two,gap:[tur_np:NP],sem:NP])--> [].
tur_np([coord:no,num:pl,per:thr,gap:[tur_np:NP],sem:NP])--> [].




tur_np([coord:no,num:Num,per:Per,case:Case,gap:[],sem:NP])-->
   tur_pn([num:Num,per:Per,case:Case,sem:PN]),
   {combine(tur_np:NP,[tur_pn:PN])}.

/*
tur_np([coord:no,num:Num,per:Per,case:Case,gap:[],sem:NP])-->
   tur_n([coord:no,num:Num,per:Per,case:Case,sem:N]),
   {combine(tur_np:NP,[tur_n:N])}.
*/

tur_np([coord:no,num:Num,per:Per,case:Case,gap:[],sem:NP])-->
   tur_det([mood:decl,type:_,num:Num,sem:Det]),
   tur_n([coord:no,num:Num,per:Per,case:Case,sem:N]),
   {combine(tur_np:NP,[tur_det:Det,tur_n:N])}.


 
/*========================================================================
   Nouns
========================================================================*/

tur_n([coord:no,num:Num,per:Per,case:Case,sem:N])-->
   tur_noun([num:Num,per:Per,case:Case,sem:Noun]),
   {combine(tur_n:N,[tur_noun:Noun])}.


/*========================================================================
   Verb Phrases
========================================================================*/

tur_vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   tur_iv([inf:Inf,num:Num,per:Per,sem:IV]),
   {combine(tur_vp:VP,[tur_iv:IV])}.

tur_vp([coord:no,inf:I,num:Num,per:Per,gap:G,sem:VP])-->
   tur_np([coord:_,num:_,per:_,case:acc,gap:G,sem:NP]),
      tur_tv([inf:I,num:Num,per:Per,sem:TV]),
   {combine(tur_vp:VP,[tur_np:NP,tur_tv:TV])}.

/*

tur_vp([coord:yes,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   tur_vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP1]),
   tur_coord([type:_,sem:C]),
   tur_vp([coord:_,inf:Inf,num:Num,gap:[],sem:VP2]),
   {combine(tur_vp:VP,[tur_vp:VP1,tur_coord:C,tur_vp:VP2])}.



tur_vp([coord:no,inf:Inf,num:Num,gap:[],sem:VP])-->
   tur_cop([inf:Inf,num:Num,sem:Cop]),
   tur_np([coord:_,num:_,gap:[],sem:NP]),
   {combine(tur_vp:VP,[tur_cop:Cop,tur_np:NP])}.

tur_vp([coord:yes,inf:Inf,num:Num,gap:[],sem:VP])-->
   tur_vp([coord:no,inf:Inf,num:Num,gap:[],sem:VP1]),
   tur_coord([type:_,sem:C]),
   tur_vp([coord:_,inf:Inf,num:Num,gap:[],sem:VP2]),
   {combine(tur_vp:VP,[tur_vp:VP1,tur_coord:C,tur_vp:VP2])}.
*/

/*========================================================================
   Lexical Rules
========================================================================*/

tur_iv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(tur_iv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(tur_iv,[symbol:Sym,sem:Sem])}.


tur_tv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(tur_tv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(tur_tv,[symbol:Sym,sem:Sem])}.


/*

tur_cop([inf:Inf,num:Num,sem:Sem])-->
   {lexEntry(tur_cop,[pol:Pol,syntax:Word,inf:Inf,num:Num])}, % why no number in copula?
   Word,
   {semLex(tur_cop,[pol:Pol,sem:Sem])}.
*/

tur_pn([num:Num,per:Per,case:Case,sem:Sem])-->
   {lexEntry(tur_pn,[symbol:Sym,syntax:Word,num:Num,per:Per,case:Case])},
   Word,
   {semLex(tur_pn,[symbol:Sym,sem:Sem])}.

tur_noun([num:Num,per:Per,case:Case,sem:Sem])-->
  {lexEntry(tur_noun,[symbol:Sym,syntax:Word,num:Num,per:Per,case:Case])},
  Word,
  {semLex(tur_noun,[symbol:Sym,sem:Sem])}.

tur_coord([type:Type,sem:Sem])-->
   {lexEntry(tur_coord,[syntax:Word,type:Type])},
   Word,
   {semLex(tur_coord,[type:Type,sem:Sem])}.

tur_det([mood:M,type:Type,num:Num,sem:Det])-->
   {lexEntry(tur_det,[syntax:Word,mood:M,type:Type,num:Num])},
   Word,
   {semLex(tur_det,[type:Type,sem:Det])}.





