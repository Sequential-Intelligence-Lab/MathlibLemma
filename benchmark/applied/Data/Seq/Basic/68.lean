import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.all_iff_forall_get?
    {s : Seq α} {p : α → Prop} :
    (∀ x ∈ s, p x) ↔ ∀ n x, s.get? n = some x → p x := by
  sorry
