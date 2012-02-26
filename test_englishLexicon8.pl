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
/*
lexEntry(det,[syntax:[every],mood:decl,type:uni]).
lexEntry(det,[syntax:[a],mood:decl,type:indef]).
lexEntry(det,[syntax:[the],mood:decl,type:def]).
*/

lexEntry(det,[syntax:[every],mood:decl,type:uni,num:sg]).
lexEntry(det,[syntax:[a],mood:decl,type:indef,num:sg]).
lexEntry(det,[syntax:[the],mood:decl,type:def,num:sg]).
lexEntry(det,[syntax:[the],mood:decl,type:def,num:pl]).





% tout / chaque
% un / une
% le / la / les


/*========================================================================
   Nouns
========================================================================*/



lexEntry(noun,[symbol:book,syntax:[book],num:sg,per:thr]).
lexEntry(noun,[symbol:book,syntax:[books],num:pl,per:thr]).

lexEntry(noun,[symbol:joke,syntax:[joke],num:sg,per:thr]).
lexEntry(noun,[symbol:joke,syntax:[jokes],num:pl,per:thr]).

lexEntry(noun,[symbol:man,syntax:[man],num:sg,per:thr]).
lexEntry(noun,[symbol:man,syntax:[men],num:pl,per:thr]).

lexEntry(noun,[symbol:radio,syntax:[radio],num:sg,per:thr]).
lexEntry(noun,[symbol:radio,syntax:[radios],num:pl,per:thr]).

lexEntry(noun,[symbol:restaurant,syntax:[restaurant],num:sg,per:thr]).
lexEntry(noun,[symbol:restaurant,syntax:[restaurants],num:pl,per:thr]).


%finish making lexical entries for other nouns in plural form

lexEntry(noun,[symbol:woman,syntax:[woman],num:sg,per:thr]).
lexEntry(noun,[symbol:woman,syntax:[women],num:pl,per:thr]).

lexEntry(noun,[symbol:cat,syntax:[cat],num:sg,per:thr]).

lexEntry(noun,[symbol:bread,syntax:[bread],num:sg,per:thr]).

lexEntry(noun,[symbol:cup,syntax:[cup],num:sg,per:thr]).

lexEntry(noun,[symbol:picture,syntax:[picture],num:sg,per:thr]).

lexEntry(noun,[symbol:magazine,syntax:[magazine],num:sg,per:thr]).

lexEntry(noun,[symbol:lamp,syntax:[lamp],num:sg,per:thr]).

lexEntry(noun,[symbol:person,syntax:[person],num:sg,per:thr]).


% add person, etc

/*========================================================================
   Proper Names
========================================================================*/

lexEntry(pn,[symbol:butch,syntax:[butch],num:sg, per:thr]).

lexEntry(pn,[symbol:jimmy,syntax:[jimmy],num:sg, per:thr]).

lexEntry(pn,[symbol:jody,syntax:[jody],num:sg, per:thr]).

lexEntry(pn,[symbol:jules,syntax:[jules],num:sg, per:thr]).

lexEntry(pn,[symbol:lance,syntax:[lance],num:sg, per:thr]).

lexEntry(pn,[symbol:marvin,syntax:[marvin],num:sg, per:thr]).

lexEntry(pn,[symbol:mia,syntax:[mia],num:sg, per:thr]).

lexEntry(pn,[symbol:pumpkin,syntax:[pumpkin],num:sg, per:thr]).

lexEntry(pn,[symbol:vincent,syntax:[vincent],num:sg, per:thr]).

lexEntry(pn,[symbol:marsellus,syntax:[marsellus],num:sg, per:thr]).

% personal pronouns:
lexEntry(pn,[symbol:i,syntax:[i],num:sg,per:one]).
lexEntry(pn,[symbol:you,syntax:[you],num:sg,per:two]).
lexEntry(pn,[symbol:he,syntax:[he],num:sg,per:thr]).
lexEntry(pn,[symbol:she,syntax:[she],num:sg,per:thr]).
lexEntry(pn,[symbol:we,syntax:[we],num:pl,per:one]).
lexEntry(pn,[symbol:you,syntax:[you],num:pl,per:two]).
lexEntry(pn,[symbol:they,syntax:[they],num:pl,per:thr]).

% coreference of pronouns - a possible later addition


/*========================================================================
   Intransitive Verbs
========================================================================*/
/*
lexEntry(iv,[symbol:collapse,syntax:[collapse],inf:inf,num:sg]).
lexEntry(iv,[symbol:collapse,syntax:[collapses],inf:fin,num:sg]).
lexEntry(iv,[symbol:collapse,syntax:[collapse],inf:fin,num:pl]).
*/


% dance
lexEntry(iv,[symbol:dance,syntax:[dance],inf:inf,num:sg,per:inf]).
lexEntry(iv,[symbol:dance,syntax:[dance],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:dance,syntax:[dance],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:dance,syntax:[dances],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:dance,syntax:[dance],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:dance,syntax:[dance],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:dance,syntax:[dance],inf:fin,num:pl,per:thr]).

% walk
lexEntry(iv,[symbol:walk,syntax:[walk],inf:inf,num:sg,per:inf]).
lexEntry(iv,[symbol:walk,syntax:[walk],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:walk,syntax:[walk],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:walk,syntax:[walks],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:walk,syntax:[walk],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:walk,syntax:[walk],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:walk,syntax:[walk],inf:fin,num:pl,per:thr]).

%talk
lexEntry(iv,[symbol:talk,syntax:[talk],inf:inf,num:sg,per:inf]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:talk,syntax:[talks],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:pl,per:thr]).


/*========================================================================
   Transitive Verbs
========================================================================*/

% eat
lexEntry(tv,[symbol:eat,syntax:[eat],inf:inf,num:sg,per:inf]).
lexEntry(tv,[symbol:eat,syntax:[eat],inf:fin,num:sg,per:one]).
lexEntry(tv,[symbol:eat,syntax:[eat],inf:fin,num:sg,per:two]).
lexEntry(tv,[symbol:eat,syntax:[eats],inf:fin,num:sg,per:thr]).
lexEntry(tv,[symbol:eat,syntax:[eat],inf:fin,num:pl,per:one]).
lexEntry(tv,[symbol:eat,syntax:[eat],inf:fin,num:pl,per:two]).
lexEntry(tv,[symbol:eat,syntax:[eat],inf:fin,num:pl,per:thr]).

% love
lexEntry(tv,[symbol:love,syntax:[love],inf:inf,num:sg,per:inf]).
lexEntry(tv,[symbol:love,syntax:[love],inf:fin,num:sg,per:one]).
lexEntry(tv,[symbol:love,syntax:[love],inf:fin,num:sg,per:two]).
lexEntry(tv,[symbol:love,syntax:[loves],inf:fin,num:sg,per:thr]).
lexEntry(tv,[symbol:love,syntax:[love],inf:fin,num:pl,per:one]).
lexEntry(tv,[symbol:love,syntax:[love],inf:fin,num:pl,per:two]).
lexEntry(tv,[symbol:love,syntax:[love],inf:fin,num:pl,per:thr]).

% know
lexEntry(tv,[symbol:know,syntax:[know],inf:inf,num:sg,per:inf]).
lexEntry(tv,[symbol:know,syntax:[know],inf:fin,num:sg,per:one]).
lexEntry(tv,[symbol:know,syntax:[know],inf:fin,num:sg,per:two]).
lexEntry(tv,[symbol:know,syntax:[knows],inf:fin,num:sg,per:thr]).
lexEntry(tv,[symbol:know,syntax:[know],inf:fin,num:pl,per:one]).
lexEntry(tv,[symbol:know,syntax:[know],inf:fin,num:pl,per:two]).
lexEntry(tv,[symbol:know,syntax:[know],inf:fin,num:pl,per:thr]).

% read
lexEntry(tv,[symbol:read,syntax:[read],inf:inf,num:sg,per:inf]).
lexEntry(tv,[symbol:read,syntax:[read],inf:fin,num:sg,per:one]).
lexEntry(tv,[symbol:read,syntax:[read],inf:fin,num:sg,per:two]).
lexEntry(tv,[symbol:read,syntax:[reads],inf:fin,num:sg,per:thr]).
lexEntry(tv,[symbol:read,syntax:[read],inf:fin,num:pl,per:one]).
lexEntry(tv,[symbol:read,syntax:[read],inf:fin,num:pl,per:two]).
lexEntry(tv,[symbol:read,syntax:[read],inf:fin,num:pl,per:thr]).

/*========================================================================
   Coordinations
========================================================================*/

lexEntry(coord,[syntax:[and],type:conj]).
lexEntry(coord,[syntax:[ou],type:disj]).


/*=======================================================================
   Copula
========================================================================*/

lexEntry(cop,[pol:pos,syntax:[is],inf:fin,num:sg]).
lexEntry(cop,[pol:neg,syntax:[is,not],inf:fin,num:sg]). % uncertain abt
lexEntry(cop,[pol:pos,syntax:[are],inf:fin,num:pl]).
lexEntry(cop,[pol:neg,syntax:[are,not],inf:fin,num:pl]).


/*========================================================================
   Prepositions
========================================================================*/

/*
lexEntry(prep,[symbol:about,syntax:[about]]).
lexEntry(prep,[symbol:in,syntax:[in]]).
lexEntry(prep,[symbol:of,syntax:[of]]).
lexEntry(prep,[symbol:with,syntax:[with]]).
*/

/*========================================================================
   Adjectives
========================================================================*/


lexEntry(adj,[symbol:big,syntax:[big]]).
lexEntry(adj,[symbol:blue,syntax:[blue]]).
lexEntry(adj,[symbol:happy,syntax:[happy]]).
lexEntry(adj,[symbol:married,syntax:[married]]).
lexEntry(adj,[symbol:red,syntax:[red]]).
lexEntry(adj,[symbol:sad,syntax:[sad]]).
lexEntry(adj,[symbol:small,syntax:[small]]).
lexEntry(adj,[symbol:tall,syntax:[tall]]).
lexEntry(adj,[symbol:short,syntax:[short]]).



/*========================================================================
   Auxiliary Verbs
========================================================================*/

/*
lexEntry(av,[syntax:[does],inf:fin,num:sg,pol:pos]).
lexEntry(av,[syntax:[does,not],inf:fin,num:sg,pol:neg]).
lexEntry(av,[syntax:[did],inf:fin,num:sg,pol:pos]).
lexEntry(av,[syntax:[did,not],inf:fin,num:sg,pol:neg]).
*/

