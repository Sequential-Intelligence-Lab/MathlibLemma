import Mathlib

/-- The image of a totally bounded set in a metric space under a 1-Lipschitz map to `GHSpace`
is totally bounded. -/
lemma GromovHausdorff.totallyBounded_image_of_Lipschitz
    {X : Type*} [MetricSpace X]
    (f : X → GromovHausdorff.GHSpace)
    (hf : LipschitzWith 1 f)
    {s : Set X} (hs : TotallyBounded s) :
    TotallyBounded (f '' s) := by
  sorry
