import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max'_map_embedding {α β} [LinearOrder α] [LinearOrder β]
    (e : α ↪ β) {s : Finset α} (hs : s.Nonempty)
    (h_mono : Monotone e) :
    (s.image e).max' (hs.image _) = e (s.max' hs) := by
  have h₁ : ∀ (y : β), y ∈ s.image e → y ≤ e (s.max' hs) := by
    intro y hy
    rw [Finset.mem_image] at hy
    rcases hy with ⟨a, ha, rfl⟩
    have h₂ : a ≤ s.max' hs := by
      apply Finset.le_max'
      <;> simp_all
    exact h_mono h₂
  
  have h₂ : e (s.max' hs) ∈ s.image e := by
    apply Finset.mem_image.mpr
    refine' ⟨s.max' hs, _⟩
    simp_all [Finset.max'_mem]
    <;> aesop
  
  have h₃ : (s.image e).max' (hs.image _) ≤ e (s.max' hs) := by
    apply Finset.max'_le (s.image e) _
    <;> simp_all [h₁]
    <;> aesop
  
  have h₄ : e (s.max' hs) ≤ (s.image e).max' (hs.image _) := by
    apply Finset.le_max'
    <;> simp_all
  
  have h₅ : (s.image e).max' (hs.image _) = e (s.max' hs) := by
    apply le_antisymm h₃ h₄
  
  apply h₅