import Mathlib

lemma RCLike.re_series_mul_conj_nonneg
    {K : Type*} [RCLike K]
    {α : Type*} [Fintype α] (f : α → K) :
    0 ≤ RCLike.re (∑ a, f a * star (f a)) := by
  classical
  -- Move `RCLike.re` inside the sum using linearity
  have hsum :
      RCLike.re (∑ a, f a * star (f a))
        = ∑ a : α, RCLike.re (f a * star (f a)) := by
    -- `∑ a,` with `[Fintype α]` is over `Finset.univ`,
    -- so we can use `map_sum` on `Finset.univ`.
    simpa using
      (LinearMap.map_sum (RCLike.re : K →ₗ[ℝ] ℝ)
        (fun a => f a * star (f a)) Finset.univ)

  -- Each term `re (f a * star (f a))` is `RCLike.normSq (f a)`, which is nonnegative.
  have h_nonneg_term :
      ∀ a : α, 0 ≤ RCLike.re (f a * star (f a)) := by
    intro a
    -- By definition, `RCLike.normSq z = RCLike.re (z * star z)`.
    -- So this is just `RCLike.normSq_nonneg (f a)` rewritten.
    simpa [RCLike.normSq] using
      (RCLike.normSq_nonneg (f a))

  -- Sum of nonnegative reals is nonnegative
  have hsum_nonneg :
      0 ≤ ∑ a : α, RCLike.re (f a * star (f a)) := by
    refine Finset.sum_nonneg ?term
    intro a _ha
    exact h_nonneg_term a

  -- Rewrite back using `hsum`
  simpa [hsum] using hsum_nonneg