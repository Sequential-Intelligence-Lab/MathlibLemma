import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.length'_monotone_of_prefix
    {s t : Seq α} (h : ∀ n x, s.get? n = some x → t.get? n = some x) :
    s.length' ≤ t.length' := by
  sorry
