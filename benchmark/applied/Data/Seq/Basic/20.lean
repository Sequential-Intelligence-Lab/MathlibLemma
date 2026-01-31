import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.eq_of_prefix_get?
    {s t : Seq α}
    (h : ∀ n x, s.get? n = some x → t.get? n = some x)
    (hlen : t.length' ≤ s.length') :
    s = t := by
  sorry
