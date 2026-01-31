import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.TerminatedAt.mono {s : Seq α} {m n : ℕ}
    (h : s.TerminatedAt m) (hmn : m ≤ n) :
    s.TerminatedAt n := by
  sorry
