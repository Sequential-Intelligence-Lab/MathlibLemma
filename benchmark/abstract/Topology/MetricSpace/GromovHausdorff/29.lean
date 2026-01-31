import Mathlib

/-- If a family of compact metric spaces is precompact in Gromov-Hausdorff distance,
then any sequence in this family has a Gromov-Hausdorff convergent subsequence. -/
lemma GromovHausdorff.compactness_sequential
    {ι : Type*}
    (X : ι → Type*)
    [∀ i, MetricSpace (X i)]
    [∀ i, CompactSpace (X i)]
    [∀ i, Nonempty (X i)]
    (h_precompact :
      TotallyBounded (Set.range (fun i => GromovHausdorff.toGHSpace (X i)))) :
    ∀ (f : ℕ → ι),
      ∃ (g : ℕ → ℕ) (Y : Type*),
        StrictMono g ∧
        ∃ (_ : MetricSpace Y) (_ : CompactSpace Y) (_ : Nonempty Y),
          Filter.Tendsto
            (fun n => (GromovHausdorff.ghDist (X (f (g n))) Y : ℝ))
            Filter.atTop (nhds (0 : ℝ)) := by
  sorry