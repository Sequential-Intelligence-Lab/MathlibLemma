import Mathlib

open MeasureTheory
open scoped BigOperators Pointwise

lemma convolution_support_subset_closure_add
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [TopologicalSpace G] [AddGroup G] [IsTopologicalAddGroup G] [T1Space G]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F] [NormedSpace ℝ F]
  [MeasurableSpace G] [BorelSpace G]
  (L : E →L[𝕜] E' →L[𝕜] F)
  (μ : Measure G)
  (f : G → E) (g : G → E') :
  Function.support (convolution f g L μ)
    ⊆ closure (Function.support f + Function.support g) :=
by
  sorry