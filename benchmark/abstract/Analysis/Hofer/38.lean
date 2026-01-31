import Mathlib

/-- If a continuous function on a compact metric space is injective, then any inverse
defined on its range is continuous. -/
lemma continuous_inverse_of_compact_injective
    {X Y : Type*} [MetricSpace X] [CompactSpace X] [MetricSpace Y]
    {f : X → Y} (hf : Continuous f)
    (hinj : Function.Injective f)
    (g : Set.range f → X)
    (hg : ∀ x : X, g ⟨f x, ⟨x, rfl⟩⟩ = x) :
    Continuous g := by
  sorry