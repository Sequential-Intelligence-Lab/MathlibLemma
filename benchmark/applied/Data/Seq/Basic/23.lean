import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.get?_take_ge
    (s : Seq α) (n m : ℕ) (h : m ≥ n) :
    (s.take n)[m]? = none := by
  sorry
