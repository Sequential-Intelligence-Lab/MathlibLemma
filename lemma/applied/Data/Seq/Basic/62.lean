import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.fold_eq_of_forall_eq
    (s t : Seq α) (init : β) (f : β → α → β)
    (h : ∀ n, s.get? n = t.get? n) :
    s.fold init f = t.fold init f := by
  -- First, show the sequences are equal by extensionality on `get?`
  have hs : s = t := by
    ext n a
    constructor <;> intro hna <;> simpa [h n] using hna
  -- Then rewrite using that equality
  simpa [hs]

/-
Update / set
-/