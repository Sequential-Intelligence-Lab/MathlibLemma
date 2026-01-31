import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq1.toSeq_length'
    (s : Seq1 α) :
    (Seq1.toSeq s).length' = (s.2 : Seq α).length' + 1 := by
  sorry
