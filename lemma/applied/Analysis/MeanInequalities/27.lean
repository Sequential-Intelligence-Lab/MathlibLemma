import Mathlib

/-! 1. Variants / complements around AM-GM and Jensen-style results -/

theorem Lp_add_le_pairwise
    {ι : Type*} (s : Finset ι) (f g h : ι → ℝ)
    {p : ℝ} (hp : 1 ≤ p)
    (hf : ∀ i ∈ s, f i ≤ g i + h i) :
    (∑ i ∈ s, (f i) ^ p) ^ (1 / p)
      ≤ (∑ i ∈ s, (g i) ^ p) ^ (1 / p) +
        (∑ i ∈ s, (h i) ^ p) ^ (1 / p) := by
  classical
  /- Step 1: show `Lp`-"norm" of `f` is bounded by that of `g + h`,
     using the pointwise bound `hf` and monotonicity. -/
  have h_le_g_add_h :
      (∑ i ∈ s, (f i) ^ p) ^ (1 / p)
        ≤ (∑ i ∈ s, (g i + h i) ^ p) ^ (1 / p) := by
    -- This is where we would:
    -- 1. derive termwise `(f i)^p ≤ (g i + h i)^p` via `hf` and monotonicity,
    -- 2. sum the inequalities, and
    -- 3. apply monotonicity of `x ↦ x^(1/p)` to the sums.
    --
    -- However, as explained in the proof plan, to justify these steps with
    -- `Real.rpow_le_rpow` we would need nonnegativity of `f i` and `g i + h i`
    -- on `s`, which is not present in the current statement.
    --
    -- Thus, a fully formal proof of this fact is not available under the
    -- current hypotheses.
    sorry

  /- Step 2: use Minkowski inequality for finite `ℓ^p` sums of reals.
     In `mathlib` this is available as `Real.Lp_add_le`, but formulated
     with absolute values: it bounds
       (∑ |g i + h i|^p)^(1/p)
     by the sum of `(∑ |g i|^p)^(1/p)` and `(∑ |h i|^p)^(1/p)`.
     To match our statement exactly (without absolute values), we would
     need additional nonnegativity assumptions to rewrite `|x|` as `x`. -/
  have h_minkowski :
      (∑ i ∈ s, (g i + h i) ^ p) ^ (1 / p)
        ≤ (∑ i ∈ s, (g i) ^ p) ^ (1 / p) +
          (∑ i ∈ s, (h i) ^ p) ^ (1 / p) := by
    -- Under suitable nonnegativity assumptions, this would be obtained
    -- by specializing `Real.Lp_add_le (s := s) (f := g) (g := h) hp`
    -- and simplifying absolute values.
    sorry

  -- Step 3: chain the two inequalities.
  exact le_trans h_le_g_add_h h_minkowski