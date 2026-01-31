import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.drop_add
    (s : Seq α) (m n : ℕ) :
    s.drop (m + n) = (s.drop m).drop n := by
  -- extensionality on sequences: they are determined by their nth element
  ext k
  -- unfold / simplify the effect of `drop` on the nth element
  simp [Seq.drop, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]