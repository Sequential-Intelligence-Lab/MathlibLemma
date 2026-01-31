import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.length'_ne_top_iff_terminates (s : Seq α) :
    s.length' ≠ ⊤ ↔ s.Terminates := by
  sorry
