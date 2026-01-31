import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


theorem resolventSet.open_of_closed_spectrum
    {R A : Type*} [TopologicalSpace R]
    [CommRing R] [Ring A] [Algebra R A]
    (a : A) (h : IsClosed (spectrum R a)) :
    IsOpen (resolventSet R a) := by
  have h1 : resolventSet R a = (spectrum R a)ᶜ := by
    ext r
    simp [resolventSet, spectrum, Set.mem_compl_iff]
  rw [h1]
  exact h.isOpen_compl