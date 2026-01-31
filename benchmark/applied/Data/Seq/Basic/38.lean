import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.append_terminates_iff
    {s t : Seq α} :
    (Seq.append s t).Terminates ↔ s.Terminates ∧ t.Terminates := by
  sorry
