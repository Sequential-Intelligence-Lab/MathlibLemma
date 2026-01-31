import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.finite_range_get?
    (s : Seq α) (hs : s.Terminates) :
    (Set.range fun n : ℕ => s.get? n).Finite := by
  sorry
