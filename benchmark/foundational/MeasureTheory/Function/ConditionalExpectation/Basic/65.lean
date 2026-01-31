import Mathlib

open MeasureTheory

lemma condExp_invariance_under_translation
    {α : Type _} [MeasurableSpace α]
    (m : MeasurableSpace α) (μ : Measure α)
    (f : α → ℝ) (c : ℝ)
    [SigmaFinite (μ.trim (by exact le_of_eq rfl : m ≤ m))] :
    μ[fun x ↦ f x + c | m] =ᵐ[μ] μ[f | m] + μ[fun _ : α ↦ c | m] := by
  sorry