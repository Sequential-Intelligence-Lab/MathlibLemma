import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma spectrum.eq_of_isUnit_sub_iff
    {R A : Type*} [CommRing R] [Ring A] [Algebra R A]
    {a b : A}
    (h : ∀ r : R, IsUnit (algebraMap R A r - a) ↔ IsUnit (algebraMap R A r - b)) :
    spectrum R a = spectrum R b := by
  ext
  constructor <;> simp_all [spectrum.mem_iff]
  <;> exact ⟨fun ⟨r, hr, hrr⟩ => ⟨r, hr, by simp_all [h]⟩, fun ⟨r, hr, hrr⟩ => ⟨r, hr, by simp_all [h]⟩⟩