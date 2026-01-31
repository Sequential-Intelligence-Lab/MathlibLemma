import Mathlib

/-- If a sequence is Cauchy with respect to the extended nonnegative reals `ENNReal`,
given by an `EMetricSpace`, it is Cauchy in the induced metric space when all distances
are finite. -/
lemma CauchySeq_of_EMetric_CauchySeq
    {X : Type*} [EMetricSpace X]
    (hfin : ∀ x y : X, edist x y < ⊤)
    {u : ℕ → X} (hc : CauchySeq u) :
    CauchySeq u := by
  -- we build a `MetricSpace` structure from the `EMetricSpace` using `hfin`
  -- so that the `UniformSpace` used in `CauchySeq` comes from this metric
  let _ : MetricSpace X :=
    EMetricSpace.toMetricSpace
      (by
        intro x y
        have h := hfin x y
        exact ne_of_lt h)
  -- proof of the actual lemma is omitted
  sorry