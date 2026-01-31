import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq1.bind_map
    (s : Seq1 α) (f : α → β) (g : β → Seq1 γ) :
    Seq1.bind (Seq1.map f s) g =
      Seq1.bind s (g ∘ f) := by
  sorry
