import Mathlib

lemma convolution_smul_left
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [SMul 𝕜 E] [SMul 𝕜 F] [IsScalarTower 𝕜 𝕜 E] [IsScalarTower 𝕜 𝕜 F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F]
  [MeasurableSpace G] [AddGroup G] [TopologicalSpace G] [NormedSpace ℝ F]
  (L : E →L[𝕜] E' →L[𝕜] F) (μ : MeasureTheory.Measure G)
  (c : 𝕜) (f : G → E) (g : G → E') :
  MeasureTheory.convolution (fun x => c • f x) g L μ
    = fun x => c • (MeasureTheory.convolution f g L μ x) :=
by
  sorry
