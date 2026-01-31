import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.terminates_of_exists_terminatedAt_ge
    {s : Seq α} (h : ∃ n, s.TerminatedAt n ∧ ∀ m ≥ n, s.TerminatedAt m) :
    s.Terminates := by
  sorry
