import Mathlib

open scoped MeasureTheory

lemma convolution_smooth_of_smooth_compact_support
  {𝕜 G E E' F : Type*} [RCLike 𝕜]
  [AddGroup G] [NormedAddCommGroup G] [NormedSpace 𝕜 G]
  [MeasurableSpace G] [BorelSpace G]
  (μ : MeasureTheory.Measure G)
  [MeasureTheory.SFinite μ]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F] [NormedSpace ℝ F]
  (n : ℕ∞)
  (L : E →L[𝕜] E' →L[𝕜] F)
  (f : G → E) (g : G → E')
  (hf : ContDiff 𝕜 n f) (hg : ContDiff 𝕜 n g)
  (hf_cpt : HasCompactSupport f) (hg_cpt : HasCompactSupport g) :
  ContDiff 𝕜 n (MeasureTheory.convolution f g L μ) :=
by
  sorry