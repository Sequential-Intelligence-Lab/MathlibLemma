import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.all_append
    {s t : Seq α} {p : α → Prop} :
    (∀ x ∈ Seq.append s t, p x) ↔
      (∀ x ∈ s, p x) ∧ (∀ x ∈ t, p x) := by
  sorry

/-
Pairwise
-/
