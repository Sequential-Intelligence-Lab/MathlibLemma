import Mathlib


variable {α β γ δ : Type _}

open Stream'
open Stream'.Seq

/-
Lemmas about length, length', Terminates, TerminatedAt
-/
lemma Seq.get?_eq_get?_of_prefix
    {s t : Seq α}
    (h : ∀ n x, s.get? n = some x → t.get? n = some x)
    {n} (ht : t.TerminatedAt n) :
    s.get? n = none := by
  -- Expand the definition of TerminatedAt for `t`
  -- In mathlib, `TerminatedAt n` is definitionally `t.get? n = none`.
  -- We make that explicit for rewriting/simp.
  dsimp [Seq.TerminatedAt] at ht
  -- Prove by contradiction: assume `s.get? n ≠ none`
  by_contra hsn
  -- Do case analysis on `s.get? n`
  cases hget : s.get? n with
  | none =>
      -- Then `s.get? n = none`, contradicting the assumption `hsn`
      exact hsn hget
  | some x =>
      -- From this case, we know `s.get? n = some x`
      have hsx : s.get? n = some x := hget
      -- Use the prefix hypothesis to obtain a value for `t.get? n`
      have htx : t.get? n = some x := h _ _ hsx
      -- But this contradicts termination of `t` at `n`
      -- since `ht : t.get? n = none`
      have : (none : Option α) = some x := by
        -- Rewrite `ht` to express both sides and conclude a contradiction
        simpa [ht] using htx
      -- `none = some x` is impossible
      cases this

/-
Take / Drop and length, get?
-/