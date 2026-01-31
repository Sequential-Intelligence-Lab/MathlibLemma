import Mathlib

open Filter
open TopologicalSpace
open scoped NNReal

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

lemma ODE_solution_unique_local'
    {v : ℝ → E → E} {K : ℝ≥0}
    {f g : ℝ → E} {t₀ : ℝ}
    (hv : ∀ᶠ t in nhds t₀, LipschitzWith K (v t))
    (hf : ∀ᶠ t in nhds t₀, HasDerivAt f (v t (f t)) t)
    (hg : ∀ᶠ t in nhds t₀, HasDerivAt g (v t (g t)) t)
    (h0 : f t₀ = g t₀) :
    f =ᶠ[nhds t₀] g := by
  sorry