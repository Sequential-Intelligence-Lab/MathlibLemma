import Mathlib

lemma RingHom.IsBoundedWrt.comp {α β γ : Type*} [Ring α] [Ring β] [Ring γ]
    {nα : α → ℝ} {nβ : β → ℝ} {nγ : γ → ℝ}
    {f : α →+* β} {g : β →+* γ}
    (hf : RingHom.IsBoundedWrt nα nβ f)
    (hg : RingHom.IsBoundedWrt nβ nγ g) :
    RingHom.IsBoundedWrt nα nγ (g.comp f) := by
  -- Unpack the boundedness constants for f and g
  rcases hf with ⟨Cf, hCf_pos, hCf_bound⟩
  rcases hg with ⟨Cg, hCg_pos, hCg_bound⟩
  -- We'll use Cg * Cf as the new constant
  refine ⟨Cg * Cf, ?_, ?_⟩
  · -- positivity of the product constant
    exact mul_pos hCg_pos hCf_pos
  · -- main inequality for all a : α
    intro a
    -- We'll need Cg ≥ 0 to multiply inequalities
    have hCg_nonneg : 0 ≤ Cg := le_of_lt hCg_pos
    calc
      nγ ((g.comp f) a)
          = nγ (g (f a)) := rfl
      _ ≤ Cg * nβ (f a) := hCg_bound (f a)
      _ ≤ Cg * (Cf * nα a) := by
            exact mul_le_mul_of_nonneg_left (hCf_bound a) hCg_nonneg
      _ = (Cg * Cf) * nα a := by
            -- reassociate the product
            simpa [mul_assoc]