import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.map_injective
    {f : α → β} (hf : Function.Injective f) :
    Function.Injective (Seq.map f) := by
  sorry
