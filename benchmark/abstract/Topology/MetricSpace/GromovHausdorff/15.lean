import Mathlib

/-- If a sequence of compact metric spaces is Cauchy in the Gromov-Hausdorff distance,
then the sequence of their diameters is Cauchy in `ℝ`. -/
lemma GromovHausdorff.cauchySeq_diam_of_cauchySeq_ghDist
    {X : ℕ → Type*} [∀ n, MetricSpace (X n)] [∀ n, CompactSpace (X n)] [∀ n, Nonempty (X n)]
    (h : CauchySeq (fun n m => GromovHausdorff.ghDist (X n) (X m))) :
    CauchySeq (fun n => Metric.diam (Set.univ : Set (X n))) := by
  sorry