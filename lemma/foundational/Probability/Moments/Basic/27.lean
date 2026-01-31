import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

lemma centralMoment_congr_ae
    {Ω : Type*} [MeasurableSpace Ω]
    {X Y : Ω → ℝ} {p : ℕ} {μ : MeasureTheory.Measure Ω}
    (hXY : X =ᵐ[μ] Y) :
    ProbabilityTheory.centralMoment X p μ =
      ProbabilityTheory.centralMoment Y p μ := by
  -- Unfold the definition of centralMoment
  simp [ProbabilityTheory.centralMoment]
  -- Name the expectations of X and Y
  set EX : ℝ := ∫ x, X x ∂μ with hEX
  set EY : ℝ := ∫ x, Y x ∂μ with hEY
  -- Now the goal is
  -- ∫ x, (X x - EX) ^ p ∂μ = ∫ x, (Y x - EY) ^ p ∂μ
  -- First, show EX = EY using the a.e. equality X = Y
  have h_mean' : ∫ x, X x ∂μ = ∫ x, Y x ∂μ :=
    MeasureTheory.integral_congr_ae hXY
  have h_mean : EX = EY := by
    simpa [hEX, hEY] using h_mean'
  -- Replace EY by EX in the second integral
  have h_rewrite_center :
      ∫ x, (Y x - EY) ^ p ∂μ = ∫ x, (Y x - EX) ^ p ∂μ := by
    simpa [h_mean]
  -- Show the integrands (centered at EX) are a.e. equal
  have h_int :
      (fun x => (X x - EX) ^ p) =ᵐ[μ] (fun x => (Y x - EX) ^ p) := by
    refine hXY.mono ?_
    intro x hx
    simpa [hx]
  -- Equality of the corresponding integrals
  have h_int_eq :
      ∫ x, (X x - EX) ^ p ∂μ = ∫ x, (Y x - EX) ^ p ∂μ :=
    MeasureTheory.integral_congr_ae h_int
  -- Combine everything
  calc
    ∫ x, (X x - EX) ^ p ∂μ
        = ∫ x, (Y x - EX) ^ p ∂μ := h_int_eq
    _   = ∫ x, (Y x - EY) ^ p ∂μ := h_rewrite_center.symm