import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq1.bind_ret_left
    (s : Seq1 α) :
    Seq1.bind s Seq1.ret = s := by
  sorry
