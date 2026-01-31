import Mathlib

lemma TensorProduct.norm_tmul_sq
    {E F : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    [NormedAddCommGroup F] [InnerProductSpace ℂ F]
    (x : E) (y : F) :
    ‖x ⊗ₜ[ℂ] y‖^2 = ‖x‖^2 * ‖y‖^2 := by
  -- First use the known norm formula for pure tensors
  have h := TensorProduct.norm_tmul (x := x) (y := y) (𝕜 := ℂ)
  -- Square both sides
  have h2 : ‖x ⊗ₜ[ℂ] y‖ ^ 2 = (‖x‖ * ‖y‖) ^ 2 := by
    exact congrArg (fun t : ℝ => t ^ 2) h
  -- Simplify the right-hand side to ‖x‖^2 * ‖y‖^2
  -- using (a * b)^2 = a^2 * b^2
  simpa [pow_two, mul_comm, mul_left_comm, mul_assoc] using h2