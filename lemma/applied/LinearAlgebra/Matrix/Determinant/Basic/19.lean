import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.injective_toLin'_of_det_ne_zero
    {R} [CommRing R] [IsDomain R]
    {n : Type*} [Fintype n] [DecidableEq n]
    (A : Matrix n n R) (h : A.det ≠ 0) :
    Function.Injective A.toLin' := by
  have h_main : Function.Injective (fun (v : n → R) => A.mulVec v) := by
    have h₁ : ∀ (v : n → R), (A.adjugate * A).mulVec v = (A.det • (1 : Matrix n n R)).mulVec v := by
      intro v
      calc
        (A.adjugate * A).mulVec v = (A.adjugate * A).mulVec v := rfl
        _ = (A.det • (1 : Matrix n n R)).mulVec v := by
          have h₂ : A.adjugate * A = A.det • (1 : Matrix n n R) := by
            rw [Matrix.adjugate_mul]
            <;> simp [Matrix.smul_one_mul]
          rw [h₂]
          <;> simp [Matrix.smul_one_mul]
    intro v w h₂
    have h₃ : A.mulVec v = A.mulVec w := h₂
    have h₄ : A.mulVec (v - w) = 0 := by
      calc
        A.mulVec (v - w) = A.mulVec v - A.mulVec w := by
          rw [Matrix.mulVec_sub]
        _ = A.mulVec w - A.mulVec w := by rw [h₃]
        _ = 0 := by simp
    have h₅ : (A.adjugate * A).mulVec (v - w) = 0 := by
      calc
        (A.adjugate * A).mulVec (v - w) = A.adjugate.mulVec (A.mulVec (v - w)) := by
          rw [Matrix.mulVec_mulVec]
          <;>
          simp [Matrix.mulVec_smul, Matrix.mulVec_mulVec]
        _ = A.adjugate.mulVec 0 := by rw [h₄]
        _ = 0 := by simp [Matrix.mulVec_zero]
    have h₆ : (A.det • (1 : Matrix n n R)).mulVec (v - w) = 0 := by
      have h₇ : (A.adjugate * A).mulVec (v - w) = (A.det • (1 : Matrix n n R)).mulVec (v - w) := h₁ (v - w)
      rw [h₇] at h₅
      exact h₅
    have h₇ : A.det • (v - w) = 0 := by
      calc
        A.det • (v - w) = (A.det • (1 : Matrix n n R)).mulVec (v - w) := by
          simp [Matrix.one_mulVec, Matrix.smul_mulVec_assoc]
          <;>
          ext i <;>
          simp [Matrix.one_apply, Matrix.smul_apply, Pi.smul_apply] <;>
          ring
          <;>
          simp_all
        _ = 0 := h₆
    have h₈ : A.det • (v - w) = 0 := h₇
    have h₉ : v - w = 0 := by
      have h₁₀ : A.det ≠ 0 := h
      have h₁₁ : IsDomain R := inferInstance
      have h₁₂ : v - w = 0 := by
        apply eq_of_sub_eq_zero
        have h₁₃ : A.det • (v - w) = 0 := h₈
        have h₁₄ : ∀ i : n, A.det * (v - w) i = 0 := by
          intro i
          have h₁₅ : (A.det • (v - w)) i = 0 := by
            rw [h₁₃]
            simp
          simp [Pi.smul_apply] at h₁₅ ⊢
          <;> simp_all [mul_comm]
          <;>
          ring_nf at *
          <;>
          simp_all [mul_comm]
        have h₁₅ : ∀ i : n, (v - w) i = 0 := by
          intro i
          have h₁₆ : A.det * (v - w) i = 0 := h₁₄ i
          have h₁₇ : A.det ≠ 0 := h
          have h₁₈ : IsDomain R := inferInstance
          have h₁₉ : (v - w) i = 0 := by
            by_contra h₂₀
            have h₂₁ : A.det * (v - w) i ≠ 0 := by
              apply mul_ne_zero
              · exact h₁₇
              · intro h₂₂
                apply h₂₀
                simp_all
            simp_all
          exact h₁₉
        have h₂₀ : v - w = 0 := by
          ext i
          exact h₁₅ i
        simp_all
        <;>
        aesop
      exact h₁₂
    have h₁₀ : v = w := by
      have h₁₁ : v - w = 0 := h₉
      have h₁₂ : v = w := by
        have h₁₃ : v - w = 0 := h₁₁
        have h₁₄ : v = w := by
          apply eq_of_sub_eq_zero
          exact h₁₃
        exact h₁₄
      exact h₁₂
    exact h₁₀
  
  have h_final : Function.Injective A.toLin' := by
    have h₁ : Function.Injective (fun (v : n → R) => A.mulVec v) := h_main
    have h₂ : Function.Injective A.toLin' := by
      -- Show that the injectivity of A.mulVec implies the injectivity of A.toLin'
      have h₃ : ∀ (v w : n → R), A.toLin' v = A.toLin' w → v = w := by
        intro v w h₄
        have h₅ : A.toLin' v = A.toLin' w := h₄
        have h₆ : A.mulVec v = A.mulVec w := by
          simp only [LinearMap.toFun_eq_coe, Matrix.toLin'_apply] at h₅ ⊢
          exact h₅
        have h₇ : v = w := h₁ h₆
        exact h₇
      -- Use the above to conclude that A.toLin' is injective
      exact fun v w h₄ => h₃ v w h₄
    exact h₂
  
  exact h_final