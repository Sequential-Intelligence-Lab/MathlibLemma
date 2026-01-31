import Mathlib

open MeasureTheory

variable {α : Type _}

/-- A version of the statement with the measure written explicitly as `μ[|m]`. -/
lemma condExp_invariance_under_add_const
    {m m₀ : MeasurableSpace α} (μ : Measure α)
    (f : α → ℝ) (c : ℝ) :
    μ[fun x ↦ f x + c | m] =ᵐ[μ] μ[f | m] + μ[fun _ : α ↦ c | m] := by
  sorry