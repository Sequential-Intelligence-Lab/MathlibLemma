import Mathlib

open scoped Topology
open scoped NNReal  -- for the notation ℝ≥0

open Filter
open TopologicalSpace

variable {E : Type*}

/-- Uniqueness of ODE solutions near `t₀`, under a local Lipschitz condition
and assuming both solutions satisfy the ODE and belong to the constraint set `s`. -/
lemma ODE_solution_unique_of_eventually'
    [NormedAddCommGroup E] [NormedSpace ℝ E]
    {v : ℝ → E → E} {s : ℝ → Set E} {K : ℝ≥0}
    {f g : ℝ → E} {t₀ : ℝ}
    (hv : ∀ᶠ t in 𝓝 t₀, LipschitzOnWith K (v t) (s t))
    (hf : ∀ᶠ t in 𝓝 t₀,
      DifferentiableAt ℝ f t ∧ HasDerivAt f (v t (f t)) t ∧ f t ∈ s t)
    (hg : ∀ᶠ t in 𝓝 t₀,
      DifferentiableAt ℝ g t ∧ HasDerivAt g (v t (g t)) t ∧ g t ∈ s t)
    (h0 : f t₀ = g t₀) :
    f =ᶠ[𝓝 t₀] g := by
  sorry