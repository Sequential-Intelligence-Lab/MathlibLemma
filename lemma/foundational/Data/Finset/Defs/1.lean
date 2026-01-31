import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.subset_antisymm {α} {s t : Finset α} : s ⊆ t → t ⊆ s → s = t := by
  intro h₁ h₂
  have h_main : s = t := by
    apply Finset.ext
    intro x
    constructor <;> intro h <;>
    (try { contradiction }) <;>
    (try { simp_all [Finset.mem_filter, Finset.mem_univ, true_and] }) <;>
    (try { aesop }) <;>
    (try {
      have h₃ : x ∈ s := by aesop
      have h₄ : x ∈ t := by aesop
      aesop
    }) <;>
    (try {
      have h₃ : x ∈ t := by aesop
      have h₄ : x ∈ s := by aesop
      aesop
    })
    <;>
    (try { simp_all [Finset.subset_iff] })
    <;>
    (try { tauto })
    <;>
    (try {
      aesop
    })
  exact h_main