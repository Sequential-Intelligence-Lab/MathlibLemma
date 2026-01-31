import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.update_comp
    (s : Seq α) (n : ℕ) (f g : α → α) :
    s.update n (g ∘ f) = (s.update n f).update n g := by
  sorry
