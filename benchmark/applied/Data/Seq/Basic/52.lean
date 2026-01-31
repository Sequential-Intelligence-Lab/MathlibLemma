import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.join_terminates_iff
    (S : Seq (Seq1 α)) :
    (Seq.join S).Terminates ↔
      (∀ s ∈ S, (s.2 : Seq α).Terminates) ∧ S.Terminates := by
  sorry
