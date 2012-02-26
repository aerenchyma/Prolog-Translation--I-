/*************************************************************************/

:- module(lambda4,[
                  infix/0,
                  prefix/0,
                  lambda4/0,
                  lambda4/2]).

:- use_module(readLine,[readLine/1]).

:- use_module(comsemPredicates,[infix/0,
                                prefix/0,
                                printRepresentations/1,
				compose/3]).

:- use_module(betaConversion,[betaConvert/2]).

:- use_module(sentenceTestSuite,[sentence/2]).

:- [turkishGrammar5].

:- [turkishLexicon4].

:- [semLexLambda3].

:- [semRulesLambda4].


/*========================================================================
   Driver Predicates
========================================================================*/

lambda4:-
	readLine(Sentence),
        lambda4(Sentence,Sems),
	printRepresentations(Sems).

lambda4(Sentence,Sems):-
	setof(Sem,tur_t([sem:Sem],Sentence,[]),Sems).

