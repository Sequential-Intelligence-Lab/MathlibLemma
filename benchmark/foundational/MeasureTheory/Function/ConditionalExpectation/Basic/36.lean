import Mathlib

open MeasureTheory

lemma condExp_ite {α E} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    {m m₀ : MeasurableSpace α} {μ : Measure α}
    (s : Set α) (hs : MeasurableSet[m] s) [DecidablePred (· ∈ s)]
    (f g : α → E) :
    μ[fun x => if x ∈ s then f x else g x|m] =ᵐ[μ]
      fun x => if x ∈ s then μ[fun x => f x|m] x else μ[fun x => g x|m] x := by
  sorry