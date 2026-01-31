import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.image_univ_eq_range (f : ℕ → ℕ) (n : ℕ)
    (hf : ∀ i < n, f i < n) (hinj : Set.InjOn f {i | i < n}) :
    (Finset.univ : Finset (Fin n)).image (fun i : Fin n => Fin.mk (f i) (hf i i.2)) =
      Finset.univ := by
  have h_injective : Function.Injective (fun i : Fin n => Fin.mk (f i) (hf i i.2)) := by
    intro i j h
    have h₁ : (f i : ℕ) = f j := by
      have h₂ := h
      simp [Fin.ext_iff] at h₂ ⊢
      <;> simp_all [Fin.val_mk]
      <;> omega
    have h₃ : (i : ℕ) < n := i.is_lt
    have h₄ : (j : ℕ) < n := j.is_lt
    have h₅ : (i : ℕ) = (j : ℕ) := by
      apply hinj
      <;> (try simp_all [Set.mem_setOf_eq])
      <;> (try omega)
      <;> (try simp_all [h₁])
    have h₆ : i = j := by
      cases i <;> cases j <;> simp_all [Fin.ext_iff]
      <;> omega
    exact h₆
  
  have h_card : ((Finset.univ : Finset (Fin n)).image (fun i : Fin n => Fin.mk (f i) (hf i i.2))).card = n := by
    have h₁ : ((Finset.univ : Finset (Fin n)).image (fun i : Fin n => Fin.mk (f i) (hf i i.2))).card = (Finset.univ : Finset (Fin n)).card := by
      apply Finset.card_image_of_injective
      exact h_injective
    have h₂ : (Finset.univ : Finset (Fin n)).card = n := by
      simp [Finset.card_univ]
      <;> simp [Fintype.card_fin]
    rw [h₁, h₂]
  
  have h_subset : (Finset.univ : Finset (Fin n)).image (fun i : Fin n => Fin.mk (f i) (hf i i.2)) ⊆ Finset.univ := by
    intro x hx
    simp only [Finset.mem_univ] at hx ⊢
    <;> aesop
  
  have h_card_univ : (Finset.univ : Finset (Fin n)).card = n := by
    simp [Finset.card_univ]
    <;> simp [Fintype.card_fin]
    <;> rfl
  
  have h_main : (Finset.univ : Finset (Fin n)).image (fun i : Fin n => Fin.mk (f i) (hf i i.2)) = Finset.univ := by
    apply Finset.eq_of_subset_of_card_le h_subset
    rw [h_card_univ]
    <;> rw [h_card]
    <;> simp_all
  
  exact h_main