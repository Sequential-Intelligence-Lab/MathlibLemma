import Mathlib

variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.get?_append_right
    (s t : Seq α) (n : ℕ)
    (h : (s.length' : ℕ∞) ≤ n) :
    (Seq.append s t).get? n = t.get? (n - s.length'.toNat) := by
  sorry