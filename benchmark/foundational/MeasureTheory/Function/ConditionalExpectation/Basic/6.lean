import Mathlib

open MeasureTheory
open scoped BigOperators

lemma condExp_mul_indicator_of_measurableSet₁
    {α 𝕜} [RCLike 𝕜]
    {m : MeasurableSpace α} {μ : Measure α}
    {s : Set α} (hs : MeasurableSet[m] s) (f : α → 𝕜) :
    μ[fun x ↦ f x * s.indicator (fun _ => (1 : 𝕜)) x | m] =ᵐ[μ]
      fun x ↦ μ[f | m] x * s.indicator (fun _ => (1 : 𝕜)) x := by
  sorry

lemma condExp_mul_indicator_of_measurableSet₂
    {α} {m : MeasurableSpace α} {μ : Measure α}
    {s : Set α} (hs : MeasurableSet[m] s) (f : α → ℝ) :
    μ[fun x ↦ f x * s.indicator (fun _ => (1 : ℝ)) x | m] =ᵐ[μ]
      fun x ↦ μ[f | m] x * s.indicator (fun _ => (1 : ℝ)) x := by
  sorry