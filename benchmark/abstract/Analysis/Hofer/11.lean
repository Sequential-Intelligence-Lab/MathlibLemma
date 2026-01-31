import Mathlib

/-- If `f` is uniformly continuous and sends Cauchy sequences to convergent sequences,
then the codomain is complete on the image closure. -/
lemma completeSpace_closure_image_of_uniformContinuous
    {X Y : Type*} [MetricSpace X] [CompleteSpace X] [MetricSpace Y]
    {f : X → Y} (hf : UniformContinuous f) :
    CompleteSpace (closure (Set.range f)) := by
  sorry