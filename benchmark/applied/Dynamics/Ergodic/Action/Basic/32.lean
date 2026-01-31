import Mathlib

open Set MeasureTheory

/-- In an ergodic action on a compact metric space with full support, the orbit
of almost every point is dense. -/
lemma ergodicSMul_dense_orbit_ae_of_fullSupport
    {G α : Type*}
    [Group G] [MulAction G α]
    [TopologicalSpace α] [CompactSpace α] [MeasurableSpace α]
    [MetricSpace α] [BorelSpace α]
    (μ : Measure α) [IsProbabilityMeasure μ]
    [ErgodicSMul G α μ]
    (h_full : Measure.support μ = (univ : Set α))
    (h_meas : ∀ g : G, Measurable fun x : α => g • x) :
    ∀ᵐ x ∂μ, closure (MulAction.orbit G x) = (univ : Set α) := by
  sorry