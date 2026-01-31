import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.update_comp
    (s : Seq α) (n : ℕ) (f g : α → α) :
    s.update n (g ∘ f) = (s.update n f).update n g := by
  classical
  -- extensionality on the sequence indices
  ext k
  by_cases hk : k = n
  · -- Case k = n: both sides apply g ∘ f to the original value at n
    subst hk
    simp [Seq.update, Function.comp]
  · -- Case k ≠ n: updates at n do not affect index k
    simp [Seq.update, hk, Function.comp]