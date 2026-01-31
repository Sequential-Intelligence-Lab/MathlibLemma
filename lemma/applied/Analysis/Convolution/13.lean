import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma convolution_sub_left
  {𝕜 G E E' F : Type*} [NontriviallyNormedField 𝕜]
  [NormedAddCommGroup E] [NormedAddCommGroup E'] [NormedAddCommGroup F]
  [NormedSpace 𝕜 E] [NormedSpace 𝕜 E'] [NormedSpace 𝕜 F] [NormedSpace ℝ F]
  [MeasurableSpace G] [AddGroup G] [TopologicalSpace G]
  (L : E →L[𝕜] E' →L[𝕜] F) (μ : MeasureTheory.Measure G)
  (f f' : G → E) (g : G → E')
  (h1 : MeasureTheory.ConvolutionExists f g L μ)
  (h2 : MeasureTheory.ConvolutionExists f' g L μ) :
  MeasureTheory.convolution (fun x => f x - f' x) g L μ
    = fun x => MeasureTheory.convolution f g L μ x
            - MeasureTheory.convolution f' g L μ x :=
by
  have h_main : ∀ (x : G), (MeasureTheory.convolution (fun x => f x - f' x) g L μ) x = (MeasureTheory.convolution f g L μ) x - (MeasureTheory.convolution f' g L μ) x := by
    intro x
    have h3 : (∫ y : G, L (f y - f' y) (g (x - y)) ∂μ) = (∫ y : G, L (f y) (g (x - y)) ∂μ) - ∫ y : G, L (f' y) (g (x - y)) ∂μ := by
      have h4 : (∫ y : G, L (f y - f' y) (g (x - y)) ∂μ) = ∫ y : G, (L (f y) (g (x - y)) - L (f' y) (g (x - y))) ∂μ := by
        congr
        ext y
        have h5 : L (f y - f' y) (g (x - y)) = L (f y) (g (x - y)) - L (f' y) (g (x - y)) := by
          calc
            L (f y - f' y) (g (x - y)) = (L (f y - f' y)) (g (x - y)) := rfl
            _ = (L (f y) + L (-f' y)) (g (x - y)) := by
              -- Use linearity of L in the first argument
              have h6 : L (f y - f' y) = L (f y) + L (-f' y) := by
                calc
                  L (f y - f' y) = L (f y + (-f' y)) := by simp [sub_eq_add_neg]
                  _ = L (f y) + L (-f' y) := by
                    apply ContinuousLinearMap.map_add
              rw [h6]
            _ = (L (f y)) (g (x - y)) + (L (-f' y)) (g (x - y)) := by
              -- Use linearity of L in the second argument
              simp [ContinuousLinearMap.map_add]
            _ = (L (f y)) (g (x - y)) - (L (f' y)) (g (x - y)) := by
              -- Simplify L(-f' y)(g(x - y)) = -L(f' y)(g(x - y))
              have h7 : (L (-f' y)) (g (x - y)) = - (L (f' y)) (g (x - y)) := by
                calc
                  (L (-f' y)) (g (x - y)) = (L (-1 • (f' y))) (g (x - y)) := by simp [smul_eq_mul]
                  _ = (-1 : 𝕜) • (L (f' y)) (g (x - y)) := by
                    -- Use the fact that L is linear in the first argument
                    simp [ContinuousLinearMap.map_smul]
                  _ = - (L (f' y)) (g (x - y)) := by
                    simp [smul_eq_mul, mul_neg, one_mul]
                    <;>
                    simp_all [sub_eq_add_neg]
                    <;>
                    ring_nf
                    <;>
                    simp_all [ContinuousLinearMap.map_add]
              rw [h7]
              <;>
              simp [sub_eq_add_neg]
              <;>
              abel
            _ = L (f y) (g (x - y)) - L (f' y) (g (x - y)) := by simp [sub_eq_add_neg]
        rw [h5]
        <;>
        simp [sub_eq_add_neg]
        <;>
        abel
      rw [h4]
      -- Use the fact that the integral of the difference is the difference of the integrals
      have h10 : (∫ y : G, (L (f y) (g (x - y)) - L (f' y) (g (x - y))) ∂μ) = (∫ y : G, L (f y) (g (x - y)) ∂μ) - ∫ y : G, L (f' y) (g (x - y)) ∂μ := by
        -- Use the linearity of the integral
        have h11 : (∫ y : G, (L (f y) (g (x - y)) - L (f' y) (g (x - y))) ∂μ) = (∫ y : G, L (f y) (g (x - y)) ∂μ) - ∫ y : G, L (f' y) (g (x - y)) ∂μ := by
          -- Check that both functions are integrable
          have h12 : (∫ y : G, L (f y) (g (x - y)) ∂μ) = ∫ y : G, L (f y) (g (x - y)) ∂μ := rfl
          have h13 : (∫ y : G, L (f' y) (g (x - y)) ∂μ) = ∫ y : G, L (f' y) (g (x - y)) ∂μ := rfl
          have h14 : MeasureTheory.Integrable (fun y : G => L (f y) (g (x - y))) μ := by
            have h15 : MeasureTheory.Integrable (fun y : G => L (f y) (g (x - y))) μ := by
              have h16 : MeasureTheory.ConvolutionExists f g L μ := h1
              exact by
                have h17 := h16
                simp only [MeasureTheory.ConvolutionExists] at h17
                exact h17 x
            exact h15
          have h15 : MeasureTheory.Integrable (fun y : G => L (f' y) (g (x - y))) μ := by
            have h16 : MeasureTheory.ConvolutionExists f' g L μ := h2
            exact by
              have h17 := h16
              simp only [MeasureTheory.ConvolutionExists] at h17
              exact h17 x
          -- Use the linearity of the integral
          have h16 : (∫ y : G, (L (f y) (g (x - y)) - L (f' y) (g (x - y))) ∂μ) = (∫ y : G, L (f y) (g (x - y)) ∂μ) - ∫ y : G, L (f' y) (g (x - y)) ∂μ := by
            apply MeasureTheory.integral_sub
            · exact h14
            · exact h15
          exact h16
        exact h11
      rw [h10]
    calc
      (MeasureTheory.convolution (fun x => f x - f' x) g L μ) x = ∫ y : G, L ((fun x => f x - f' x) y) (g (x - y)) ∂μ := rfl
      _ = ∫ y : G, L (f y - f' y) (g (x - y)) ∂μ := by simp [Function.comp]
      _ = (∫ y : G, L (f y) (g (x - y)) ∂μ) - ∫ y : G, L (f' y) (g (x - y)) ∂μ := by rw [h3]
      _ = (MeasureTheory.convolution f g L μ) x - (MeasureTheory.convolution f' g L μ) x := by
        simp [MeasureTheory.convolution]
        <;>
        ring_nf
        <;>
        simp_all
        <;>
        aesop
  
  have h_final : MeasureTheory.convolution (fun x => f x - f' x) g L μ = fun x => MeasureTheory.convolution f g L μ x - MeasureTheory.convolution f' g L μ x := by
    funext x
    have h3 := h_main x
    simpa using h3
  
  exact h_final