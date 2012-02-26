% french lexicon

/*========================================================================
   Determiners
========================================================================*/

lexEntry(fr_det,[syntax:[chaque],mood:decl,type:uni]). % tout vs chaque - this one gets the stronger reading; "each"
lexEntry(fr_det,[syntax:[un],mood:decl,type:indef,num:sg,gen:mal]).
lexEntry(fr_det,[syntax:[une],mood:decl,type:indef,num:sg,gen:fem]).
/*
lexEntry(det,[syntax:[le],mood:decl,type:def,gen:mal]).
lexEntry(det,[syntax:[la],mood:decl,type:def,gen:fem]).
*/


/*========================================================================
   Nouns
========================================================================*/


lexEntry(fr_noun,[symbol:book,syntax:[livre],num:sg,per:thr,gen:mal]).
lexEntry(fr_noun,[symbol:joke,syntax:[blague],num:sg,per:thr,gen:fem]).
lexEntry(fr_noun,[symbol:man,syntax:[homme],num:sg,per:thr,gen:mal]).
lexEntry(fr_noun,[symbol:radio,syntax:[radio],num:sg,per:thr,gen:fem]).
lexEntry(fr_noun,[symbol:restaurant,syntax:[restaurant],num:sg,per:thr,gen:mal]). % yes these are right; same spellings
lexEntry(fr_noun,[symbol:woman,syntax:[femme],num:sg,per:thr,gen:fem]).
lexEntry(fr_noun,[symbol:cat,syntax:[chat],num:sg,per:thr,gen:mal]).
lexEntry(fr_noun,[symbol:bread,syntax:[pain],num:sg,per:thr,gen:mal]).
lexEntry(fr_noun,[symbol:cup,syntax:[tasse],num:sg,per:thr,gen:fem]).
lexEntry(fr_noun,[symbol:picture,syntax:[image],num:sg,per:thr,gen:fem]).
lexEntry(fr_noun,[symbol:magazine,syntax:[magazine],num:sg,per:thr,gen:mal]).
lexEntry(fr_noun,[symbol:lamp,syntax:[lampe],num:sg,per:thr,gen:fem]).
lexEntry(fr_noun,[symbol:person,syntax:[personne],num:sg,per:thr,gen:fem]).



/*========================================================================
   Proper Names
========================================================================*/

lexEntry(fr_pn,[symbol:butch,syntax:[butch],num:sg,per:thr]).

lexEntry(fr_pn,[symbol:jimmy,syntax:[jimmy],num:sg,per:thr]).

lexEntry(fr_pn,[symbol:jody,syntax:[jody],num:sg,per:thr]).

lexEntry(fr_pn,[symbol:jules,syntax:[jules],num:sg,per:thr]).

lexEntry(fr_pn,[symbol:lance,syntax:[lance],num:sg,per:thr]).

lexEntry(fr_pn,[symbol:marvin,syntax:[marvin],num:sg,per:thr]).

lexEntry(fr_pn,[symbol:mia,syntax:[mia],num:sg,per:thr]).

lexEntry(fr_pn,[symbol:pumpkin,syntax:[pumpkin],num:sg,per:thr]).

lexEntry(fr_pn,[symbol:vincent,syntax:[vincent],num:sg,per:thr]).

% personal pronouns:
lexEntry(fr_pn,[symbol:i,syntax:[je],num:sg,per:one]).
lexEntry(fr_pn,[symbol:you,syntax:[tu],num:sg,per:two]).
lexEntry(fr_pn,[symbol:he,syntax:[il],num:sg,per:thr]).
lexEntry(fr_pn,[symbol:she,syntax:[elle],num:sg,per:thr]).
lexEntry(fr_pn,[symbol:we,syntax:[nous],num:pl,per:one]).
lexEntry(fr_pn,[symbol:you_pl,syntax:[vous],num:pl,per:two]).
lexEntry(fr_pn,[symbol:they,syntax:[ils],num:pl,per:thr]).
lexEntry(fr_pn,[symbol:they,syntax:[elles],num:pl,per:thr]).


/*========================================================================
   Intransitive Verbs
========================================================================*/

% dance
lexEntry(fr_iv,[symbol:dance,syntax:[danser],inf:inf,num:sg,per:inf]).
lexEntry(fr_iv,[symbol:dance,syntax:[danse],inf:fin,num:sg,per:thr]).
lexEntry(fr_iv,[symbol:dance,syntax:[danse],inf:fin,num:sg,per:one]).
lexEntry(fr_iv,[symbol:dance,syntax:[danses],inf:fin,num:sg,per:two]).
lexEntry(fr_iv,[symbol:dance,syntax:[dansons],inf:fin,num:pl,per:one]).
lexEntry(fr_iv,[symbol:dance,syntax:[dansez],inf:fin,num:pl,per:two]).
lexEntry(fr_iv,[symbol:dance,syntax:[dansent],inf:fin,num:pl,per:thr]).

% walk
lexEntry(fr_iv,[symbol:walk,syntax:[promener],inf:inf,num:sg,per:inf]).
lexEntry(fr_iv,[symbol:walk,syntax:[promene],inf:fin,num:sg,per:thr]).
lexEntry(fr_iv,[symbol:walk,syntax:[promene],inf:fin,num:sg,per:one]).
lexEntry(fr_iv,[symbol:walk,syntax:[promenes],inf:fin,num:sg,per:two]).
lexEntry(fr_iv,[symbol:walk,syntax:[promenons],inf:fin,num:pl,per:one]).
lexEntry(fr_iv,[symbol:walk,syntax:[promenez],inf:fin,num:pl,per:two]).
lexEntry(fr_iv,[symbol:walk,syntax:[promenent],inf:fin,num:pl,per:thr]).

% talk
lexEntry(fr_iv,[symbol:talk,syntax:[parler],inf:inf,num:sg,per:inf]).
lexEntry(fr_iv,[symbol:talk,syntax:[parle],inf:fin,num:sg,per:thr]).
lexEntry(fr_iv,[symbol:talk,syntax:[parle],inf:fin,num:sg,per:one]).
lexEntry(fr_iv,[symbol:talk,syntax:[parles],inf:fin,num:sg,per:two]).
lexEntry(fr_iv,[symbol:talk,syntax:[parlons],inf:fin,num:pl,per:one]).
lexEntry(fr_iv,[symbol:talk,syntax:[parlez],inf:fin,num:pl,per:two]).
lexEntry(fr_iv,[symbol:talk,syntax:[parlent],inf:fin,num:pl,per:thr]).


/*========================================================================
   Transitive Verbs
========================================================================*/

% eat
lexEntry(fr_tv,[symbol:eat,syntax:[manger],inf:inf,num:sg,per:inf]).
lexEntry(fr_tv,[symbol:eat,syntax:[mange],inf:fin,num:sg,per:one]).
lexEntry(fr_tv,[symbol:eat,syntax:[manges],inf:fin,num:sg,per:two]).
lexEntry(fr_tv,[symbol:eat,syntax:[mange],inf:fin,num:sg,per:thr]).
lexEntry(fr_tv,[symbol:eat,syntax:[mangeons],inf:fin,num:pl,per:one]).
lexEntry(fr_tv,[symbol:eat,syntax:[mangez],inf:fin,num:pl,per:two]).
lexEntry(fr_tv,[symbol:eat,syntax:[mangent],inf:fin,num:pl,per:thr]).

% love
lexEntry(fr_tv,[symbol:love,syntax:[adorer],inf:inf,num:sg,per:inf]).
lexEntry(fr_tv,[symbol:love,syntax:[adore],inf:fin,num:sg,per:one]).
lexEntry(fr_tv,[symbol:love,syntax:[adores],inf:fin,num:sg,per:two]).
lexEntry(fr_tv,[symbol:love,syntax:[adore],inf:fin,num:sg,per:thr]).
lexEntry(fr_tv,[symbol:love,syntax:[adorons],inf:fin,num:pl,per:one]).
lexEntry(fr_tv,[symbol:love,syntax:[adorez],inf:fin,num:pl,per:two]).
lexEntry(fr_tv,[symbol:love,syntax:[adorent],inf:fin,num:pl,per:thr]).

% know
lexEntry(fr_tv,[symbol:know,syntax:[savoir],inf:inf,num:sg,per:inf]).
lexEntry(fr_tv,[symbol:know,syntax:[sais],inf:fin,num:sg,per:one]).
lexEntry(fr_tv,[symbol:know,syntax:[sais],inf:fin,num:sg,per:two]).
lexEntry(fr_tv,[symbol:know,syntax:[sait],inf:fin,num:sg,per:thr]).
lexEntry(fr_tv,[symbol:know,syntax:[savons],inf:fin,num:pl,per:one]).
lexEntry(fr_tv,[symbol:know,syntax:[savez],inf:fin,num:pl,per:two]).
lexEntry(fr_tv,[symbol:know,syntax:[savent],inf:fin,num:pl,per:thr]).

% read
lexEntry(fr_tv,[symbol:read,syntax:[lire],inf:inf,num:sg,per:inf]).
lexEntry(fr_tv,[symbol:read,syntax:[lis],inf:fin,num:sg,per:one]).
lexEntry(fr_tv,[symbol:read,syntax:[lis],inf:fin,num:sg,per:two]).
lexEntry(fr_tv,[symbol:read,syntax:[lit],inf:fin,num:sg,per:thr]).
lexEntry(fr_tv,[symbol:read,syntax:[lisons],inf:fin,num:pl,per:one]).
lexEntry(fr_tv,[symbol:read,syntax:[lisez],inf:fin,num:pl,per:two]).
lexEntry(fr_tv,[symbol:read,syntax:[lisent],inf:fin,num:pl,per:thr]).


/*========================================================================
   Coordinations
========================================================================*/

lexEntry(fr_coord,[syntax:[et],type:conj]).
lexEntry(fr_coord,[syntax:[ou],type:disj]).

/*========================================================================
   Copula
========================================================================*/

lexEntry(fr_cop,[pol:pos,syntax:[est],inf:fin,num:sg]).
lexEntry(fr_cop,[pol:neg,syntax:[ne,est,pas],inf:fin,num:sg]). % uncertain abt
lexEntry(fr_cop,[pol:pos,syntax:[sont],inf:fin,num:pl]).
lexEntry(fr_cop,[pol:neg,syntax:[ne,sont,pas],inf:fin,num:pl]).

/*========================================================================
   Adjectives
========================================================================*/

/*
lexEntry(adj,[symbol:big,syntax:[grand],num:sg,gen:mal]).
lexEntry(adj,[symbol:big,syntax:[grande],num:sg,gen:fem]).
lexEntry(adj,[symbol:big,syntax:[grands],num:pl,gen:mal]).
lexEntry(adj,[symbol:big,syntax:[grandes],num:pl,gen:fem]).
lexEntry(adj,[symbol:blue,syntax:[bleu],num:sg,gen:mal]).
lexEntry(adj,[symbol:blue,syntax:[bleue],num:sg,gen:fem]).
lexEntry(adj,[symbol:blue,syntax:[bleus],num:pl,gen:mal]).
lexEntry(adj,[symbol:blue,syntax:[bleues],num:pl,gen:fem]).
lexEntry(adj,[symbol:happy,syntax:[heureux],num:sg,gen:mal]).
lexEntry(adj,[symbol:happy,syntax:[heureuse],num:sg,gen:fem]).
lexEntry(adj,[symbol:happy,syntax:[heureux],num:pl,gen:mal]).
lexEntry(adj,[symbol:happy,syntax:[heureuses],num:pl,gen:fem]).
lexEntry(adj,[symbol:married,syntax:[epouse],num:sg,gen:mal]). % accent on last e..
lexEntry(adj,[symbol:married,syntax:[epousee],num:sg,gen:fem]). % accent on second to last e
lexEntry(adj,[symbol:married,syntax:[epouses],num:pl,gen:mal]). % accent on last e..
lexEntry(adj,[symbol:married,syntax:[epousees],num:pl,gen:fem]).
lexEntry(adj,[symbol:red,syntax:[rouge],num:sg,gen:mal]).
lexEntry(adj,[symbol:red,syntax:[rouge],num:sg,gen:fem]).
lexEntry(adj,[symbol:red,syntax:[rouges],num:sg,gen:mal]).
lexEntry(adj,[symbol:red,syntax:[rouges],num:sg,gen:fem]).
lexEntry(adj,[symbol:sad,syntax:[triste],num:sg,gen:mal]).
lexEntry(adj,[symbol:sad,syntax:[triste],num:sg,gen:fem]).
lexEntry(adj,[symbol:sad,syntax:[tristes],num:pl,gen:mal]).
lexEntry(adj,[symbol:sad,syntax:[tristes],num:pl,gen:fem]).
lexEntry(adj,[symbol:small,syntax:[petit],num:sg,gen:mal]).
lexEntry(adj,[symbol:small,syntax:[petite],num:sg,gen:fem]).
lexEntry(adj,[symbol:small,syntax:[petits],num:pl,gen:mal]).
lexEntry(adj,[symbol:small,syntax:[petites],num:pl,gen:fem]).
lexEntry(adj,[symbol:tall,syntax:[grand],num:sg,gen:mal]).
lexEntry(adj,[symbol:tall,syntax:[grande],num:sg,gen:fem]).
lexEntry(adj,[symbol:tall,syntax:[grands],num:pl,gen:mal]).
lexEntry(adj,[symbol:tall,syntax:[grandes],num:pl,gen:fem]).
lexEntry(adj,[symbol:short,syntax:[petit],gen:mal]).
lexEntry(adj,[symbol:short,syntax:[petite],gen:fem]).
lexEntry(adj,[symbol:small,syntax:[petits],num:pl,gen:mal]).
lexEntry(adj,[symbol:small,syntax:[petites],num:pl,gen:fem]).
*/
