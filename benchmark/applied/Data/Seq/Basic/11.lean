import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.not_TerminatedAt_iff_exists_get?_some
    {s : Seq α} {n : ℕ} :
    ¬ s.TerminatedAt n ↔ ∃ k ≥ n, ∃ x, s.get? k = some x := by
  sorry
