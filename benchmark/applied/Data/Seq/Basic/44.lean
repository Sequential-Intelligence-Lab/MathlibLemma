import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.mem_map_iff
    {f : α → β} {s : Seq α} {b : β} :
    b ∈ Seq.map f s ↔ ∃ a ∈ s, f a = b := by
  sorry
