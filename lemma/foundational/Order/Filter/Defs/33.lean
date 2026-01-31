import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Filter.map_comp {α β γ} (f : Filter α) (g : α → β) (h : β → γ) :
    Filter.map h (Filter.map g f) = Filter.map (fun x => h (g x)) f := by
  have h_main : Filter.map h (Filter.map g f) = Filter.map (fun x => h (g x)) f := by
    apply Filter.ext
    intro s
    simp only [Filter.mem_map]
    constructor
    · -- Forward direction: s ∈ Filter.map h (Filter.map g f) → s ∈ Filter.map (h ∘ g) f
      intro h₁
      -- h₁ : g ⁻¹' (h ⁻¹' s) ∈ f
      have h₂ : (fun x => h (g x)) ⁻¹' s ∈ f := by
        -- Show that (h ∘ g) ⁻¹' s = g ⁻¹' (h ⁻¹' s)
        have h₃ : (fun x => h (g x)) ⁻¹' s = g ⁻¹' (h ⁻¹' s) := by
          ext x
          simp [Set.mem_preimage, Function.comp_apply]
          <;>
          constructor <;>
          intro h₄ <;>
          (try simp_all [Set.mem_preimage, Function.comp_apply]) <;>
          (try aesop)
        rw [h₃] at *
        exact h₁
      exact h₂
    · -- Backward direction: s ∈ Filter.map (h ∘ g) f → s ∈ Filter.map h (Filter.map g f)
      intro h₁
      -- h₁ : (h ∘ g) ⁻¹' s ∈ f
      have h₂ : g ⁻¹' (h ⁻¹' s) ∈ f := by
        -- Show that g ⁻¹' (h ⁻¹' s) = (h ∘ g) ⁻¹' s
        have h₃ : g ⁻¹' (h ⁻¹' s) = (fun x => h (g x)) ⁻¹' s := by
          ext x
          simp [Set.mem_preimage, Function.comp_apply]
          <;>
          constructor <;>
          intro h₄ <;>
          (try simp_all [Set.mem_preimage, Function.comp_apply]) <;>
          (try aesop)
        rw [h₃]
        exact h₁
      exact h₂
  exact h_main