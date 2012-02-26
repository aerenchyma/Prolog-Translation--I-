/*************************************************************************

    File: semRulesLambda.pl
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
   Semantic Rules
========================================================================*/

combine(tur_t:Converted,[tur_s:Sem]):- 
   betaConvert(Sem,Converted).

combine(tur_t:Converted,[tur_q:Sem]):- 
   betaConvert(Sem,Converted).

combine(tur_s:app(A,B),[tur_np:A,tur_vp:B]).
combine(tur_s:app(A,B),[tur_s:A,tur_s:B]).
combine(tur_s:lam(B,imp(S,B)),[if:S]).
combine(tur_s:lam(B,or(S,B)),[either:S]).
combine(tur_s:S,[then:S]).
combine(tur_s:S,[or:S]).

combine(tur_sinv:app(B,app(A,C)),[tur_av:A,tur_np:B,tur_vp:C]).

combine(tur_q:app(A,B),[tur_whnp:A,tur_vp:B]).
combine(tur_q:A,[tur_sinv:A]).

combine(tur_np:app(app(B,A),C),[tur_np:A,tur_coord:B,tur_np:C]).
combine(tur_np:app(A,B),[tur_det:A,tur_n:B]).
combine(tur_np:A,[tur_pn:A]).
combine(tur_np:A,[tur_qnp:A]).

combine(tur_whnp:app(A,B),[tur_det:A,n:B]).
combine(tur_whnp:A,[tur_qnp:A]).

combine(tur_n:app(app(B,A),C),[tur_n:A,tur_coord:B,tur_n:C]).
combine(tur_n:app(A,B),[tur_adj:A,tur_n:B]).
combine(tur_n:A,[tur_noun:A]).
combine(tur_n:app(B,A),[tur_noun:A,tur_nmod:B]).

combine(tur_nmod:A,[tur_pp:A]).
combine(tur_nmod:A,[tur_rc:A]).
combine(tur_nmod:lam(P,app(A,app(B,P))),[tur_pp:A,tur_nmod:B]).

combine(tur_vp:app(app(B,A),C),[tur_vp:A,tur_coord:B,tur_vp:C]).
combine(tur_vp:app(A,B),[tur_av:A,tur_vp:B]).
combine(tur_vp:app(A,B),[tur_cop:A,tur_np:B]).
combine(tur_vp:A,[tur_iv:A]).
combine(tur_vp:app(A,B),[tur_np:B,tur_tv:A]).

combine(tur_pp:app(A,B),[tur_prep:A,tur_np:B]).

combine(tur_rc:app(A,B),[tur_relpro:A,tur_vp:B]).

