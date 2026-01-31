import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq1.join_toSeq
    (S : Seq1 (Seq1 α)) :
    Seq1.toSeq (Seq1.join S)
      = Seq.join (Seq.cons S.1 S.2) := by
  sorry

/-
Fold
-/
