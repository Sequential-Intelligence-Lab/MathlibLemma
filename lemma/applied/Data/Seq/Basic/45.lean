import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.zipWith_comm
    (f : α → β → γ) (g : β → α → γ)
    (hcomm : ∀ a b, f a b = g b a)
    (s : Seq α) (t : Seq β) :
    Seq.zipWith f s t = Seq.zipWith g t s := by
  -- Extensionality on `get?`
  apply Seq.ext
  intro n
  -- Describe `get?` of a `zipWith`
  simp [Seq.zipWith, get?_zipWith]
  -- Now the goal is an equality of `Option` expressions in terms of `s.get? n` and `t.get? n`
  -- Case split on both options
  cases hs : s.get? n <;> cases ht : t.get? n <;>
    simp [hs, ht, hcomm]