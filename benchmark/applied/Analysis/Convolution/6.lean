import Mathlib

lemma convolution_norm_le_convolution_norm_mul_opNorm
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F]
  [MeasurableSpace G] [AddGroup G] [TopologicalSpace G] [BorelSpace G]
  [IsTopologicalAddGroup G] [NormedSpace ℝ F]
  (L : E →L[𝕜] E' →L[𝕜] F)
  (μ : MeasureTheory.Measure G)
  (f : G → E) (g : G → E') (x : G) :
  ‖(MeasureTheory.convolution f g L μ) x‖
    ≤ ‖L‖ * MeasureTheory.convolution (fun y => ‖f y‖) (fun y => ‖g y‖)
      (ContinuousLinearMap.mul ℝ ℝ) μ x :=
by
  sorry
