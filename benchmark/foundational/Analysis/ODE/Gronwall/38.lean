import Mathlib

namespace ApproxODE

open scoped NNReal

variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

-- We define `gronwallBound` as a parameter (no assumptions on its behavior).
variable (gronwallBound : ℝ → ℝ≥0 → ℝ → ℝ → ℝ)

lemma dist_le_of_approx_trajectories_ODE_centered
    {v : ℝ → E → E} {K : ℝ≥0}
    {f g f' g' : ℝ → E} {εf εg δ : ℝ} {t₀ : ℝ}
    (hv : ∀ t, LipschitzWith K (v t))
    (hf : ∀ t, HasDerivAt f (f' t) t)
    (f_bound : ∀ t, dist (f' t) (v t (f t)) ≤ εf)
    (hg : ∀ t, HasDerivAt g (g' t) t)
    (g_bound : ∀ t, dist (g' t) (v t (g t)) ≤ εg)
    (h0 : dist (f t₀) (g t₀) ≤ δ) :
    ∀ t, dist (f t) (g t) ≤ gronwallBound δ K (εf + εg) (t - t₀) := by
  sorry

end ApproxODE