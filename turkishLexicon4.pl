/*************************************************************************

    File: englishLexicon.pl
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
   Determiners
========================================================================*/


lexEntry(tur_det,[syntax:[her],mood:decl,type:uni,num:sg]).
lexEntry(tur_det,[syntax:[bir],mood:decl,type:indef,num:sg]).


/*========================================================================
   Nouns
========================================================================*/



lexEntry(tur_noun,[symbol:book,syntax:[kitap],num:sg,per:thr,case:nom]).
lexEntry(tur_noun,[symbol:joke,syntax:[saka],num:sg,per:thr,case:nom]).
lexEntry(tur_noun,[symbol:man,syntax:[adam],num:sg,per:thr,case:nom]).
lexEntry(tur_noun,[symbol:radio,syntax:[radyo],num:sg,per:thr,case:nom]).
lexEntry(tur_noun,[symbol:restaurant,syntax:[lokanta],num:sg,per:thr,case:nom]).
lexEntry(tur_noun,[symbol:woman,syntax:[kadin],num:sg,per:thr,case:nom]).
lexEntry(tur_noun,[symbol:cat,syntax:[kedi],num:sg,per:thr,case:nom]).
lexEntry(tur_noun,[symbol:bread,syntax:[ekmek],num:sg,per:thr,case:nom]).
lexEntry(tur_noun,[symbol:cup,syntax:[bardak],num:sg,per:thr,case:nom]).
lexEntry(tur_noun,[symbol:picture,syntax:[resim],num:sg,per:thr,case:nom]).
lexEntry(tur_noun,[symbol:magazine,syntax:[gazete],num:sg,per:thr,case:nom]).
lexEntry(tur_noun,[symbol:lamp,syntax:[lampa],num:sg,per:thr,case:nom]).
lexEntry(tur_noun,[symbol:person,syntax:[insan],num:sg,per:thr,case:nom]).

lexEntry(tur_noun,[symbol:book,syntax:[kitabi],num:sg,per:thr,case:acc]).
lexEntry(tur_noun,[symbol:joke,syntax:[sakayi],num:sg,per:thr,case:acc]).
lexEntry(tur_noun,[symbol:man,syntax:[adami],num:sg,per:thr,case:acc]).
lexEntry(tur_noun,[symbol:radio,syntax:[radyoyu],num:sg,per:thr,case:acc]).
lexEntry(tur_noun,[symbol:restaurant,syntax:[lokantayi],num:sg,per:thr,case:acc]).
lexEntry(tur_noun,[symbol:woman,syntax:[kadinyi],num:sg,per:thr,case:acc]).
lexEntry(tur_noun,[symbol:cat,syntax:[kediyi],num:sg,per:thr,case:acc]).
lexEntry(tur_noun,[symbol:bread,syntax:[ekmegi],num:sg,per:thr,case:acc]).
lexEntry(tur_noun,[symbol:cup,syntax:[bardagi],num:sg,per:thr,case:acc]).
lexEntry(tur_noun,[symbol:picture,syntax:[resimi],num:sg,per:thr,case:acc]).
lexEntry(tur_noun,[symbol:magazine,syntax:[gazeteyi],num:sg,per:thr,case:acc]).
lexEntry(tur_noun,[symbol:lamp,syntax:[lampayi],num:sg,per:thr,case:acc]).
lexEntry(tur_noun,[symbol:person,syntax:[insani],num:sg,per:thr,case:acc]).


/*========================================================================
   Proper Names
========================================================================*/

lexEntry(tur_pn,[symbol:butch,syntax:[butch],num:sg, per:thr,case:nom]).
lexEntry(tur_pn,[symbol:butch,syntax:[butchu],num:sg, per:thr,case:acc]).

lexEntry(tur_pn,[symbol:jimmy,syntax:[jimmy],num:sg, per:thr,case:nom]).
lexEntry(tur_pn,[symbol:jimmy,syntax:[jimmyi],num:sg, per:thr,case:acc]).

lexEntry(tur_pn,[symbol:jody,syntax:[jody],num:sg, per:thr,case:nom]).
lexEntry(tur_pn,[symbol:jody,syntax:[jodyi],num:sg, per:thr,case:acc]).

lexEntry(tur_pn,[symbol:jules,syntax:[jules],num:sg, per:thr,case:nom]).
lexEntry(tur_pn,[symbol:jules,syntax:[julesu],num:sg, per:thr,case:acc]).

lexEntry(tur_pn,[symbol:lance,syntax:[lance],num:sg, per:thr,case:nom]).
lexEntry(tur_pn,[symbol:lance,syntax:[lancei],num:sg, per:thr,case:acc]).

lexEntry(tur_pn,[symbol:marvin,syntax:[marvin],num:sg, per:thr,case:nom]).
lexEntry(tur_pn,[symbol:marvin,syntax:[marvini],num:sg, per:thr,case:acc]).

lexEntry(tur_pn,[symbol:mia,syntax:[mia],num:sg, per:thr,case:nom]).
lexEntry(tur_pn,[symbol:mia,syntax:[miayi],num:sg, per:thr,case:acc]).

lexEntry(tur_pn,[symbol:pumpkin,syntax:[pumpkin],num:sg, per:thr,case:nom]).
lexEntry(tur_pn,[symbol:pumpkin,syntax:[pumpkini],num:sg, per:thr,case:acc]).

lexEntry(tur_pn,[symbol:vincent,syntax:[vincent],num:sg, per:thr,case:nom]).
lexEntry(tur_pn,[symbol:vincent,syntax:[vincenti],num:sg, per:thr,case:acc]).

lexEntry(tur_pn,[symbol:marsellus,syntax:[marsellus],num:sg, per:thr,case:nom]).
lexEntry(tur_pn,[symbol:marsellus,syntax:[marsellusu],num:sg, per:thr,case:acc]).

% personal pronouns:
lexEntry(tur_pn,[symbol:i,syntax:[ben],num:sg,per:one,case:nom]).
lexEntry(tur_pn,[symbol:you,syntax:[sen],num:sg,per:two,case:nom]).
lexEntry(tur_pn,[symbol:he,syntax:[o],num:sg,per:thr,case:nom]).
lexEntry(tur_pn,[symbol:she,syntax:[o],num:sg,per:thr,case:nom]).
lexEntry(tur_pn,[symbol:we,syntax:[biz],num:pl,per:one,case:nom]).
lexEntry(tur_pn,[symbol:you,syntax:[siz],num:pl,per:two,case:nom]).
lexEntry(tur_pn,[symbol:they,syntax:[onlar],num:pl,per:thr,case:nom]).

lexEntry(tur_pn,[symbol:i,syntax:[beni],num:sg,per:one,case:acc]).
lexEntry(tur_pn,[symbol:you,syntax:[seni],num:sg,per:two,case:acc]).
lexEntry(tur_pn,[symbol:he,syntax:[onu],num:sg,per:thr,case:acc]).
lexEntry(tur_pn,[symbol:she,syntax:[onu],num:sg,per:thr,case:acc]).
lexEntry(tur_pn,[symbol:we,syntax:[bizi],num:pl,per:one,case:acc]).
lexEntry(tur_pn,[symbol:you,syntax:[sizi],num:pl,per:two,case:acc]).
lexEntry(tur_pn,[symbol:they,syntax:[onlari],num:pl,per:thr,case:acc]).


/*========================================================================
   Intransitive Verbs
========================================================================*/
/*
lexEntry(tur_iv,[symbol:collapse,syntax:[collapse],inf:inf,num:sg]).
lexEntry(tur_iv,[symbol:collapse,syntax:[collapses],inf:fin,num:sg]).
lexEntry(tur_iv,[symbol:collapse,syntax:[collapse],inf:fin,num:pl]).
*/


% dance
lexEntry(tur_iv,[symbol:dance,syntax:[dans,etmek],inf:inf,num:sg,per:inf]).
lexEntry(tur_iv,[symbol:dance,syntax:[dans,ediyorum],inf:fin,num:sg,per:one]).
lexEntry(tur_iv,[symbol:dance,syntax:[dans,ediyorsun],inf:fin,num:sg,per:two]).
lexEntry(tur_iv,[symbol:dance,syntax:[dans,ediyor],inf:fin,num:sg,per:thr]).
lexEntry(tur_iv,[symbol:dance,syntax:[dans,ediyoruz],inf:fin,num:pl,per:one]).
lexEntry(tur_iv,[symbol:dance,syntax:[dans,ediyorsunuz],inf:fin,num:pl,per:two]).
lexEntry(tur_iv,[symbol:dance,syntax:[dans,ediyorlar],inf:fin,num:pl,per:thr]).

% walk
lexEntry(tur_iv,[symbol:walk,syntax:[yurumek],inf:inf,num:sg,per:inf]).
lexEntry(tur_iv,[symbol:walk,syntax:[yuruyorum],inf:fin,num:sg,per:one]).
lexEntry(tur_iv,[symbol:walk,syntax:[yuruyorsun],inf:fin,num:sg,per:two]).
lexEntry(tur_iv,[symbol:walk,syntax:[yuruyor],inf:fin,num:sg,per:thr]).
lexEntry(tur_iv,[symbol:walk,syntax:[yuruyoruz],inf:fin,num:pl,per:one]).
lexEntry(tur_iv,[symbol:walk,syntax:[yuruyorsunuz],inf:fin,num:pl,per:two]).
lexEntry(tur_iv,[symbol:walk,syntax:[yuruyorlar],inf:fin,num:pl,per:thr]).

%talk
lexEntry(tur_iv,[symbol:talk,syntax:[konusmak],inf:inf,num:sg,per:inf]).
lexEntry(tur_iv,[symbol:talk,syntax:[konusuyorum],inf:fin,num:sg,per:one]).
lexEntry(tur_iv,[symbol:talk,syntax:[konusuyorsun],inf:fin,num:sg,per:two]).
lexEntry(tur_iv,[symbol:talk,syntax:[konusuyor],inf:fin,num:sg,per:thr]).
lexEntry(tur_iv,[symbol:talk,syntax:[konusuyoruz],inf:fin,num:pl,per:one]).
lexEntry(tur_iv,[symbol:talk,syntax:[konusuyorsunuz],inf:fin,num:pl,per:two]).
lexEntry(tur_iv,[symbol:talk,syntax:[konusuyorlar],inf:fin,num:pl,per:thr]).


/*========================================================================
   Transitive Verbs
========================================================================*/

% eat
lexEntry(tur_tv,[symbol:eat,syntax:[yemek],inf:inf,num:sg,per:inf]).
lexEntry(tur_tv,[symbol:eat,syntax:[yiyorum],inf:fin,num:sg,per:one]).
lexEntry(tur_tv,[symbol:eat,syntax:[yiyorsun],inf:fin,num:sg,per:two]).
lexEntry(tur_tv,[symbol:eat,syntax:[yiyor],inf:fin,num:sg,per:thr]).
lexEntry(tur_tv,[symbol:eat,syntax:[yiyoruz],inf:fin,num:pl,per:one]).
lexEntry(tur_tv,[symbol:eat,syntax:[yiyorsunuz],inf:fin,num:pl,per:two]).
lexEntry(tur_tv,[symbol:eat,syntax:[yiyorlar],inf:fin,num:pl,per:thr]).

% love
lexEntry(tur_tv,[symbol:love,syntax:[sevmek],inf:inf,num:sg,per:inf]).
lexEntry(tur_tv,[symbol:love,syntax:[seviyorum],inf:fin,num:sg,per:one]).
lexEntry(tur_tv,[symbol:love,syntax:[seviyorsun],inf:fin,num:sg,per:two]).
lexEntry(tur_tv,[symbol:love,syntax:[seviyor],inf:fin,num:sg,per:thr]).
lexEntry(tur_tv,[symbol:love,syntax:[seviyoruz],inf:fin,num:pl,per:one]).
lexEntry(tur_tv,[symbol:love,syntax:[seviyorsunuz],inf:fin,num:pl,per:two]).
lexEntry(tur_tv,[symbol:love,syntax:[seviyorlar],inf:fin,num:pl,per:thr]).

% know
lexEntry(tur_tv,[symbol:know,syntax:[bilmek],inf:inf,num:sg,per:inf]).
lexEntry(tur_tv,[symbol:know,syntax:[biliyorum],inf:fin,num:sg,per:one]).
lexEntry(tur_tv,[symbol:know,syntax:[biliyorsun],inf:fin,num:sg,per:two]).
lexEntry(tur_tv,[symbol:know,syntax:[biliyor],inf:fin,num:sg,per:thr]).
lexEntry(tur_tv,[symbol:know,syntax:[biliyoruz],inf:fin,num:pl,per:one]).
lexEntry(tur_tv,[symbol:know,syntax:[biliyorsunuz],inf:fin,num:pl,per:two]).
lexEntry(tur_tv,[symbol:know,syntax:[biliyorlar],inf:fin,num:pl,per:thr]).

% read
lexEntry(tur_tv,[symbol:read,syntax:[okumak],inf:inf,num:sg,per:inf]).
lexEntry(tur_tv,[symbol:read,syntax:[okuyorum],inf:fin,num:sg,per:one]).
lexEntry(tur_tv,[symbol:read,syntax:[okuyorsun],inf:fin,num:sg,per:two]).
lexEntry(tur_tv,[symbol:read,syntax:[okuyor],inf:fin,num:sg,per:thr]).
lexEntry(tur_tv,[symbol:read,syntax:[okuyoruz],inf:fin,num:pl,per:one]).
lexEntry(tur_tv,[symbol:read,syntax:[okuyorsunuz],inf:fin,num:pl,per:two]).
lexEntry(tur_tv,[symbol:read,syntax:[okuyorlar],inf:fin,num:pl,per:thr]).

/*========================================================================
   Coordinations
========================================================================*/

lexEntry(tur_coord,[syntax:[ve],type:conj]).
lexEntry(tur_coord,[syntax:[veya],type:disj]).


/*========================================================================
   Adjectives
========================================================================*/


lexEntry(tur_adj,[symbol:big,syntax:[big]]).
lexEntry(tur_adj,[symbol:blue,syntax:[blue]]).
lexEntry(tur_adj,[symbol:happy,syntax:[happy]]).
lexEntry(tur_adj,[symbol:married,syntax:[married]]).
lexEntry(tur_adj,[symbol:red,syntax:[red]]).
lexEntry(tur_adj,[symbol:sad,syntax:[sad]]).
lexEntry(tur_adj,[symbol:small,syntax:[small]]).
lexEntry(tur_adj,[symbol:tall,syntax:[tall]]).
lexEntry(tur_adj,[symbol:short,syntax:[short]]).
