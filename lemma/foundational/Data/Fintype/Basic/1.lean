import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.eq_of_veq {n : ℕ} {i j : Fin n} (h : (i : ℕ) = j) : i = j := by
  have h₁ : i.val = j.val := by
    norm_cast at h ⊢
    <;>
    (try simp_all [Fin.ext_iff])
    <;>
    (try omega)
    <;>
    (try aesop)
    <;>
    (try simp_all [Fin.val_mk])
    <;>
    (try norm_num at *)
    <;>
    (try ring_nf at *)
    <;>
    (try linarith)
  
  have h₂ : i = j := by
    apply Fin.ext
    <;>
    (try simp_all [Fin.ext_iff])
    <;>
    (try omega)
    <;>
    (try aesop)
    <;>
    (try simp_all [Fin.val_mk])
    <;>
    (try norm_num at *)
    <;>
    (try ring_nf at *)
    <;>
    (try linarith)
  
  apply h₂