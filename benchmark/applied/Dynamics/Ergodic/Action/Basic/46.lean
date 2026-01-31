import Mathlib

open MeasureTheory

/-- If the action is ergodic and an invariant measurable subset has positive
measure, then its orbit under the group covers almost all of the space. -/
lemma ergodicSMul_invariant_set_orbit_conull
    {G α : Type*} [Group G] [Mul α] [SMul G α] [IsScalarTower G α α]
    [MulAction G α] [MeasurableSpace α]
    (μ : Measure α) [ErgodicSMul G α μ]
    {s : Set α} (hs_meas : MeasurableSet s)
    (hs_invar : ∀ g : G, (fun x => g • x) ⁻¹' s =ᵐ[μ] s)
    (hs_pos : 0 < μ s) :
    μ (⋃ g : G, (fun x => g • x) ⁻¹' s)ᶜ = 0 := by
  sorry