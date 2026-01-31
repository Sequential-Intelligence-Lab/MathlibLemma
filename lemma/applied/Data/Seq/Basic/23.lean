import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.get?_take_ge
    (s : Seq α) (n m : ℕ) (h : m ≥ n) :
    (s.take n)[m]? = none := by
  -- From m ≥ n, we get ¬ m < n
  have hm : ¬ m < n := Nat.not_lt.mpr h
  -- `take n s` is defined to be `fun k => if k < n then s[k]? else none`,
  -- so at index m with ¬ m < n, it is `none`
  simpa [Seq.take, hm]