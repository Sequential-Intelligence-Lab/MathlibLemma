import Mathlib

open MeasureTheory

lemma condExp_add_const
    {α : Type*} {E : Type*}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    {m : MeasurableSpace α} (μ : Measure α)
    (f : α → E) (c : E) :
    μ[fun x ↦ f x + c | m] =ᵐ[μ] μ[f | m] + μ[fun _ : α ↦ c | m] := by
  sorry