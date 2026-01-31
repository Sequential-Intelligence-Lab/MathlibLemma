import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.update_other_index
    (s : Seq α) {m n : ℕ} (h : m ≠ n) (f : α → α) :
    (s.update n f).update m f = (s.update m f).update n f := by
  sorry
