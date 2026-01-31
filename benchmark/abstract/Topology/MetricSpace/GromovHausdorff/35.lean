import Mathlib

/-- If a family of compact metric spaces has uniformly bounded diameter and for each `ε`
there is a uniform bound on the number of `ε`-balls needed to cover, then the family
is precompact in Gromov-Hausdorff distance. -/
lemma GromovHausdorff.precompact_of_uniform_covering
    (ι : Type*)
    (X : ι → Type*)
    [∀ i, MetricSpace (X i)] [∀ i, CompactSpace (X i)] [∀ i, Nonempty (X i)]
    (C : ℝ) (hC : ∀ i, Metric.diam (Set.univ : Set (X i)) ≤ C)
    (K : ℕ → ℕ)
    (hK : ∀ (ε : ℝ), 0 < ε →
      ∀ i, ∃ (s : Set (X i)) (_ : Fintype s),
        Fintype.card s ≤ K ⌈ε⁻¹⌉₊ ∧
          (Set.univ : Set (X i)) ⊆ ⋃ x : X i, ⋃ (_hx : x ∈ s), Metric.ball x ε) :
    TotallyBounded (Set.range (fun i => GromovHausdorff.toGHSpace (X i))) := by
  sorry