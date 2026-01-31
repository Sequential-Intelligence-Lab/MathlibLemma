import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.length'_map_le (f : α → β) (s : Seq α) :
    (s.map f).length' ≤ s.length' := by
  sorry
