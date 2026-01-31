import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.take_succ_subset_take
    (s : Seq α) (n : ℕ) :
    ∀ x ∈ s.take n, x ∈ s.take (n + 1) := by
  sorry

/-
Append and length, Terminates, get?, membership
-/
