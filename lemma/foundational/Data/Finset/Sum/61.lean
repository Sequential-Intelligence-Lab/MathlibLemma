import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem map_toLeft_inl {α β} (u : Finset (α ⊕ β)) :
    u.toLeft.map (.inl : α ↪ α ⊕ β) ⊆ u := by
  intro x hx
  simp only [Finset.mem_map, Finset.mem_singleton, Finset.mem_toLeft, Finset.mem_coe,
    Finset.mem_filter, Function.comp_apply, Set.mem_toFinset] at hx ⊢
  rcases hx with ⟨a, ha, rfl⟩
  have h1 : a ∈ u.toLeft := by
    simpa using ha
  have h1' : ∃ s ∈ (u : Set (α ⊕ β)), Sum.getLeft? s = some a := by
    simp [Finset.mem_toLeft] at h1 ⊢
    tauto
  rcases h1' with ⟨s, hs, h2⟩
  have h3 : s = Sum.inl a := by
    have h4 : Sum.getLeft? s = some a := h2
    cases s <;> simp [Sum.getLeft?] at h4 ⊢
    <;> try { aesop }
  have h5 : Sum.inl a ∈ (u : Set (α ⊕ β)) := by
    rw [show Sum.inl a = s by rw [h3]]
    exact hs
  simp at h5 ⊢
  all_goals try { tauto }