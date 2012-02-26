% TRANSLATION FILE - (ENG, FR, TUR)
/*

Small Project 2
15 November 2010
LING 394 - Computational Semantics
Professor Ezra Keshet
Jackie Cohen, Deb Schaffa, Emily Reimann, Troy M, and Lizzy Podolsky

*/

% first: load translation_engfr.pl

:- module(translation_ef,[infotrans/0,
						translate_all_e/3,
						translate_all_f/3,
						translate_all_t/3,
						translate_ef/2,
						translate_fe/2,
						translate_et/2,
						translate_te/2,
						translate_ft/2,
						translate_tf/2,
 						engs/3,
						frs/3]).
						
% loading in necessary files				 

:- [test_lambda].
:- [test_lambda3].
:- [lambda4].


% translation functions below:

% show translations from english to french and to turkish
translate_all_e(E,F,T) :-
	translate_ef(E,F),
	translate_et(E,T). % could also use translate_ft
	
% show translations from french to english and to turkish
translate_all_f(F,E,T) :-
	translate_fe(E,F),
	translate_ft(F,T).
	
% show translations from turkish to english and to french
translate_all_t(T,E,F) :-
	translate_te(E,T),
	translate_tf(F,T).

% translate english to french
translate_ef(E,F) :-
	engs(Sem,E,[]),
	frs(Sem,F,[]).

% translate french to english	
translate_fe(E,F) :-
	frs(Sem,F,[]),
	engs(Sem,E,[]).

% translate english to turkish
translate_et(E,T) :-
	engs(Sem,E,[]),
	turs(Sem,T,[]).

% translate turkish to english
translate_te(E,T) :-
	turs(Sem,T,[]),
	engs(Sem,E,[]).

% translate french to turkish
translate_ft(F,T) :-
	frs(Sem,F,[]),
	turs(Sem,T,[]).

% translate turkish to french
translate_tf(F,T) :-
	turs(Sem,T,[]),
	frs(Sem,F,[]).
	


% base predicates for sem/sents - for clarity
	
engs(Sem,E,[]) :-
	lambda:t([sem:Sem],E,[]).
	
frs(Sem,F,[]) :-
	lambda2:fr_t([sem:Sem],F,[]).
	
turs(Sem,T,[]) :-
	lambda4:tur_t([sem:Sem],T,[]).



	/*========================================================================
	   Info
	========================================================================*/

	infotrans:-
	   format('~n> ------- TRANSLATION: between English, French, and Turkish --------  <',[]),
	   format('~n> translation_eft.pl                                                  <',[]),
	   format('~n>     by Jackie, Deb, Emily, Troy, and Lizzy                          <',[]),
	   format('~n>                                                                     <',[]),
	   format('~n> ?- translate_all_e(E,F,T)  - Fr and Tur transls of an Eng sentence  <',[]),
	   format('~n> ?- translate_all_f(F,E,T)  - Eng and Tur transls of a Fr sentence   <',[]),
	   format('~n> ?- translate_all_t(T,E,F)  - Eng and Fr transls of a Tur sentence   <',[]),
	   format('~n> ?- infotrans.              - shows this information                 <',[]),
	   format('~n>                                                                     <',[]),
	   format('~n> - E = list of Eng wrds; F = " of Fr wrds; T = " of Turkish words    <',[]),
	   format('~n> - list to translate goes FIRST in translate_all predicates          <',[]),
   	   format('~n> - if using a predicate within, pay attention to order w/i code      <',[]),
	   format('~n> - functions with iv, tv, indef and uni dets (a/every), & n.s listed <',[]),
	   format('~n> ------------------------------------------------------------------- <',[]),	
	   format('~n~n',[]).


	/*========================================================================
	   Display info at start
	========================================================================*/

	:- infotrans.


	

