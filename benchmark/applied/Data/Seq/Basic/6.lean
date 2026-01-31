import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.length'_strict_mono_of_strict_prefix
    {s t : Seq α}
    (hsub : ∀ n x, s.get? n = some x → t.get? n = some x)
    (hstrict : ∃ n, s.get? n = none ∧ ∃ x, t.get? n = some x) :
    s.length' < t.length' := by
  sorry
