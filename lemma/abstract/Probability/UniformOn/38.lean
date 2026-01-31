import Mathlib


variable {Ω Ω' β γ ι ι' : Type*}
variable [MeasurableSpace Ω] [MeasurableSpace Ω'] {s t u A B : Set Ω}

/-! ### 1. Basic properties and characterizations of `uniformOn` -/

open ProbabilityTheory MeasureTheory

lemma uniformOn_inter_le_min
    [MeasurableSingletonClass Ω]
    {s t u : Set Ω} (hs : s.Finite) :
    ProbabilityTheory.uniformOn s (t ∩ u) ≤
      min (ProbabilityTheory.uniformOn s t)
          (ProbabilityTheory.uniformOn s u) := by
  classical
  -- Provide a `Fintype` instance for `s` from its finiteness
  letI := hs.fintype
  -- Prove each of the two component inequalities and combine with `le_min`.
  refine le_min ?hleft ?hright
  · -- μ(t ∩ u) ≤ μ(t)
    have hsubset : t ∩ u ⊆ t := by
      intro x hx
      exact hx.1
    -- `measure_mono` gives monotonicity of the measure
    exact measure_mono hsubset
  · -- μ(t ∩ u) ≤ μ(u)
    have hsubset : t ∩ u ⊆ u := by
      intro x hx
      exact hx.2
    exact measure_mono hsubset

/-! ### 7. Symmetry / permutation invariance -/