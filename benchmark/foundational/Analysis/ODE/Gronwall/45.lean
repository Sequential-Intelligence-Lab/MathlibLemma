import Mathlib

open Metric

lemma ODE_solution_unique_of_mem_closed_ball
    {E : Type*}
    [NormedAddCommGroup E]
    [NormedSpace ℝ E]
    {v : ℝ → E → E} {K : NNReal} {R : ℝ}
    {f g : ℝ → E} {a b t₀ : ℝ}
    (hv : ∀ t ∈ Set.Icc a b, LipschitzOnWith K (v t) (closedBall (f t₀) R))
    (hf : ∀ t ∈ Set.Icc a b, HasDerivAt f (v t (f t)) t ∧ dist (f t) (f t₀) ≤ R)
    (hg : ∀ t ∈ Set.Icc a b, HasDerivAt g (v t (g t)) t ∧ dist (g t) (f t₀) ≤ R)
    (ht₀ : t₀ ∈ Set.Icc a b)
    (h0 : f t₀ = g t₀) :
    Set.EqOn f g (Set.Icc a b) := by
  sorry