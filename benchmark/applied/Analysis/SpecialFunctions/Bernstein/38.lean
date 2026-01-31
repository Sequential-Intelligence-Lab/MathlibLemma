import Mathlib

-- 39. Nonnegativity of continuous uniform limit of nonnegative functions
lemma uniform_limit_nonneg
    {I E : Type*} [TopologicalSpace I] [TopologicalSpace E]
    (f : ℕ → C(I, ℝ)) (g : C(I, ℝ))
    (hlim : Filter.Tendsto f Filter.atTop (nhds g))
    (hnonneg : ∀ n x, 0 ≤ f n x) :
    ∀ x, 0 ≤ g x := by
  sorry