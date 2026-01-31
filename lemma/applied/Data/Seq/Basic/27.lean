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
  -- Rewrite `n` as `0` using `h` and use the standard lemma `drop_zero`.
  simpa [h] using (Seq.drop_zero (s := s))