import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.all_map_iff'
    {s : Seq α} {f : α → β} {p : β → Prop} :
    (∀ y ∈ s.map f, p y) ↔ ∀ x ∈ s, p (f x) := by
  sorry
