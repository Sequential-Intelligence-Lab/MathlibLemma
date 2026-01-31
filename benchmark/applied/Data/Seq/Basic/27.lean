import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.drop_eq_self_of_le_zero
    (s : Seq α) {n : ℕ} (h : n = 0) :
    s.drop n = s := by
  sorry
