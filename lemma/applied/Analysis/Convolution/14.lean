import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma convolution_sub_right'
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F] [NormedSpace ℝ F]
  [MeasurableSpace G] [AddGroup G] [TopologicalSpace G]
  (L : E →L[𝕜] E' →L[𝕜] F) (μ : MeasureTheory.Measure G)
  (f : G → E) (g g' : G → E')
  (h1 : MeasureTheory.ConvolutionExists f g L μ)
  (h2 : MeasureTheory.ConvolutionExists f g' L μ) :
  MeasureTheory.convolution f (fun x => g x - g' x) L μ
    = fun x => MeasureTheory.convolution f g L μ x
            - MeasureTheory.convolution f g' L μ x :=
by
  have h_main : ∀ x : G, (MeasureTheory.convolution f (fun x => g x - g' x) L μ) x = (MeasureTheory.convolution f g L μ x) - (MeasureTheory.convolution f g' L μ x) := by
    intro x
    have h3 : (MeasureTheory.convolution f (fun x => g x - g' x) L μ) x = ∫ y : G, L (f y) (g (x - y) - g' (x - y)) ∂μ := by
      simp [MeasureTheory.convolution]
      <;>
      aesop
    have h4 : (MeasureTheory.convolution f g L μ) x = ∫ y : G, L (f y) (g (x - y)) ∂μ := by
      simp [MeasureTheory.convolution]
      <;>
      aesop
    have h5 : (MeasureTheory.convolution f g' L μ) x = ∫ y : G, L (f y) (g' (x - y)) ∂μ := by
      simp [MeasureTheory.convolution]
      <;>
      aesop
    rw [h3, h4, h5]
    have h6 : (∫ y : G, L (f y) (g (x - y) - g' (x - y)) ∂μ) = (∫ y : G, L (f y) (g (x - y)) ∂μ) - (∫ y : G, L (f y) (g' (x - y)) ∂μ) := by
      have h7 : (∀ y : G, L (f y) (g (x - y) - g' (x - y)) = L (f y) (g (x - y)) - L (f y) (g' (x - y))) := by
        intro y
        -- Use the linearity of L in the second argument
        have h8 : L (f y) (g (x - y) - g' (x - y)) = L (f y) (g (x - y)) - L (f y) (g' (x - y)) := by
          -- Since L : E →L[𝕜] E' →L[𝕜] F, for fixed v : E, L v : E' →L[𝕜] F is linear
          have h9 : L (f y) (g (x - y) - g' (x - y)) = L (f y) (g (x - y)) - L (f y) (g' (x - y)) := by
            -- Use the fact that L (f y) is a linear map from E' to F
            have h10 : L (f y) (g (x - y) - g' (x - y)) = L (f y) (g (x - y)) - L (f y) (g' (x - y)) := by
              -- Use the linearity of L (f y)
              apply LinearMap.map_sub
            exact h10
          exact h9
        exact h8
      -- Use the fact that the integral of the difference is the difference of integrals
      have h11 : (∫ y : G, L (f y) (g (x - y) - g' (x - y)) ∂μ) = ∫ y : G, (L (f y) (g (x - y)) - L (f y) (g' (x - y))) ∂μ := by
        congr with y
        rw [h7 y]
      rw [h11]
      -- Use the linearity of the integral to split the integral of the difference into the difference of integrals
      have h12 : ∫ y : G, (L (f y) (g (x - y)) - L (f y) (g' (x - y))) ∂μ = (∫ y : G, L (f y) (g (x - y)) ∂μ) - ∫ y : G, L (f y) (g' (x - y)) ∂μ := by
        -- Use the fact that the integral of a difference is the difference of integrals
        have h13 : ∫ y : G, (L (f y) (g (x - y)) - L (f y) (g' (x - y))) ∂μ = ∫ y : G, L (f y) (g (x - y)) ∂μ - ∫ y : G, L (f y) (g' (x - y)) ∂μ := by
          -- Use the linearity of the integral to split the integral of the difference into the difference of integrals
          have h14 : ∫ y : G, (L (f y) (g (x - y)) - L (f y) (g' (x - y))) ∂μ = ∫ y : G, L (f y) (g (x - y)) ∂μ - ∫ y : G, L (f y) (g' (x - y)) ∂μ := by
            -- Use the linearity of the integral to split the integral of the difference into the difference of integrals
            rw [MeasureTheory.integral_sub] <;>
            (try norm_num) <;>
            (try
              {
                -- Show that each integrand is integrable
                have h15 : MeasureTheory.Integrable (fun y : G => L (f y) (g (x - y))) μ := by
                  have h16 : MeasureTheory.ConvolutionExists f g L μ := h1
                  have h17 : ∀ x : G, MeasureTheory.Integrable (fun y : G => L (f y) (g (x - y))) μ := by
                    intro x
                    have h18 : MeasureTheory.Integrable (fun y : G => L (f y) (g (x - y))) μ := by
                      -- Since the convolution exists, the integrand is integrable
                      have h19 : MeasureTheory.ConvolutionExists f g L μ := h1
                      have h20 : MeasureTheory.Integrable (fun y : G => L (f y) (g (x - y))) μ := by
                        -- Use the fact that the convolution exists to deduce integrability
                        exact h19 x
                      exact h20
                    exact h18
                  exact h17 x
                exact h15
              }) <;>
            (try
              {
                have h15 : MeasureTheory.Integrable (fun y : G => L (f y) (g' (x - y))) μ := by
                  have h16 : MeasureTheory.ConvolutionExists f g' L μ := h2
                  have h17 : ∀ x : G, MeasureTheory.Integrable (fun y : G => L (f y) (g' (x - y))) μ := by
                    intro x
                    have h18 : MeasureTheory.Integrable (fun y : G => L (f y) (g' (x - y))) μ := by
                      -- Since the convolution exists, the integrand is integrable
                      have h19 : MeasureTheory.ConvolutionExists f g' L μ := h2
                      have h20 : MeasureTheory.Integrable (fun y : G => L (f y) (g' (x - y))) μ := by
                        -- Use the fact that the convolution exists to deduce integrability
                        exact h19 x
                      exact h20
                    exact h18
                  exact h17 x
                exact h15
              })
          exact h14
        exact h13
      rw [h12]
    rw [h6]
    <;> simp [h4, h5]
    <;> aesop
  funext x
  apply h_main