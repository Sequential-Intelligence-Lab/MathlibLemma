import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma RCLike.conj_eq_iff_re_im (K : Type*) [RCLike K] (z : K) :
    star z = z ↔ RCLike.im z = 0 := by
  have h_forward : star z = z → RCLike.im z = 0 := by
    intro h
    have h₁ : RCLike.im (star z) = -RCLike.im z := by
      apply RCLike.conj_im
    have h₂ : RCLike.im (star z) = RCLike.im z := by
      rw [h]
    have h₃ : -RCLike.im z = RCLike.im z := by linarith
    have h₄ : RCLike.im z = 0 := by linarith
    exact h₄
  
  have h_backward : RCLike.im z = 0 → star z = z := by
    intro h_im
    have h₁ : RCLike.im (star z) = -RCLike.im z := by
      apply RCLike.conj_im
    have h₂ : RCLike.re (star z) = RCLike.re z := by
      apply RCLike.conj_re
    have h₃ : RCLike.im (star z) = 0 := by
      rw [h₁]
      linarith
    have h₄ : RCLike.im (star z) = RCLike.im z := by
      rw [h₃]
      <;> simp_all
    have h₅ : RCLike.re (star z) = RCLike.re z := by
      apply RCLike.conj_re
    have h₆ : star z = z := by
      apply RCLike.ext <;> simp_all [RCLike.re, RCLike.im]
      <;>
      (try ring_nf at * <;> simp_all) <;>
      (try linarith)
    exact h₆
  
  constructor
  · -- Prove the forward direction: star z = z → RCLike.im z = 0
    exact h_forward
  · -- Prove the backward direction: RCLike.im z = 0 → star z = z
    exact h_backward