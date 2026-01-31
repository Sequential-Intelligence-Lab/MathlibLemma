import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq1.map_injective
    {f : α → β} (hf : Function.Injective f) :
    Function.Injective (Seq1.map f) := by
  sorry
