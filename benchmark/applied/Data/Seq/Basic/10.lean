import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.TerminatedAt.not_get?_some
    {s : Seq α} {n k : ℕ} (ht : s.TerminatedAt n) (hk : k ≥ n) :
    s.get? k = none := by
  sorry
