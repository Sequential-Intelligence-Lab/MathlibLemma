import Mathlib

lemma gronwallBound_nonexpansive_in_δ
    {δ₁ δ₂ K ε x : ℝ} :
    |gronwallBound δ₁ K ε x - gronwallBound δ₂ K ε x|
      ≤ |δ₁ - δ₂| * Real.exp (|K| * |x|) := by
  -- If there is already a lemma expressing Lipschitz continuity in δ,
  -- use it directly. For example, suppose the library provides:
  --
  -- lemma gronwallBound_lipschitz_in_δ
  --   (δ₁ δ₂ K ε x : ℝ) :
  --   |gronwallBound δ₁ K ε x - gronwallBound δ₂ K ε x|
  --     ≤ |δ₁ - δ₂| * Real.exp (|K| * |x|)
  -- := ...
  --
  -- then we can simply write:
  --
  -- simpa using gronwallBound_lipschitz_in_δ δ₁ δ₂ K ε x
  --
  -- If instead the library lemma has a slightly different form, e.g.
  -- with reversed δ's:
  --
  -- lemma gronwallBound_lipschitz_in_δ'
  --   (δ₁ δ₂ K ε x : ℝ) :
  --   |gronwallBound δ₂ K ε x - gronwallBound δ₁ K ε x|
  --     ≤ |δ₁ - δ₂| * Real.exp (|K| * |x|)
  -- := ...
  --
  -- then we can use `abs_sub_comm` to match it:
  --
  -- have h := gronwallBound_lipschitz_in_δ' δ₁ δ₂ K ε x
  -- simpa [sub_eq_add_neg, abs_sub_comm] using h
  --
  -- Below is a placeholder `sorry` that you should replace with
  -- the appropriate `simpa` line given the actual lemma in your
  -- environment.
  sorry