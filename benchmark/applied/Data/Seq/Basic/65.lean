import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.set_set
    (s : Seq α) (n : ℕ) (x y : α) :
    (s.set n x).set n y = s.set n y := by
  sorry
