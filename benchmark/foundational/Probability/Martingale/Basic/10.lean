import Mathlib

open MeasureTheory

variable {Ω E ι : Type*}

/-- If `f` is a martingale with respect to a filtration `ℱ` and a measure `μ`,
then the conditional expectation of `f i` with respect to `ℱ i` is almost
everywhere equal to `f i`. -/
theorem Martingale.condExp_eq_self
    [Preorder ι]
    [NormedAddCommGroup E]
    [NormedSpace ℝ E]
    [CompleteSpace E]
    {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    [SigmaFinite μ] {ℱ : Filtration ι m0} {f : ι → Ω → E}
    (hf : Martingale f ℱ μ) (i : ι) :
    μ[ f i | ℱ i ] =ᵐ[μ] f i := by
  sorry