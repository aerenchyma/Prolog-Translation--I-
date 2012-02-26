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

combine(fr_t:Converted,[fr_s:Sem]):- 
   betaConvert(Sem,Converted).

combine(fr_t:Converted,[fr_q:Sem]):- 
   betaConvert(Sem,Converted).

combine(fr_s:app(A,B),[fr_np:A,fr_vp:B]).
combine(fr_s:app(A,B),[fr_s:A,fr_s:B]).
combine(fr_s:lam(B,imp(S,B)),[if:S]).
combine(fr_s:lam(B,or(S,B)),[either:S]).
combine(fr_s:S,[then:S]).
combine(fr_s:S,[or:S]).

combine(fr_sinv:app(B,app(A,C)),[fr_av:A,fr_np:B,fr_vp:C]).

combine(fr_q:app(A,B),[fr_whnp:A,fr_vp:B]).
combine(fr_q:A,[fr_sinv:A]).

combine(fr_np:app(app(B,A),C),[fr_np:A,fr_coord:B,fr_np:C]).
combine(fr_np:app(A,B),[fr_det:A,fr_n:B]).
combine(fr_np:A,[fr_pn:A]).
combine(fr_np:A,[fr_qnp:A]).

combine(fr_whnp:app(A,B),[fr_det:A,n:B]).
combine(fr_whnp:A,[fr_qnp:A]).

combine(fr_n:app(app(B,A),C),[fr_n:A,fr_coord:B,n:C]).
combine(fr_n:app(A,B),[fr_adj:A,fr_n:B]).
combine(fr_n:A,[fr_noun:A]).
combine(fr_n:app(B,A),[fr_noun:A,fr_nmod:B]).

combine(fr_nmod:A,[pp:A]).
combine(fr_nmod:A,[rc:A]).
combine(fr_nmod:lam(P,app(A,app(B,P))),[pp:A,nmod:B]).

combine(fr_vp:app(app(B,A),C),[fr_vp:A,fr_coord:B,fr_vp:C]).
combine(fr_vp:app(A,B),[fr_av:A,fr_vp:B]).
combine(fr_vp:app(A,B),[fr_cop:A,fr_np:B]).
combine(fr_vp:A,[fr_iv:A]).
combine(fr_vp:app(A,B),[fr_tv:A,fr_np:B]).

combine(fr_pp:app(A,B),[fr_prep:A,np:B]).

combine(fr_rc:app(A,B),[fr_relpro:A,vp:B]).

