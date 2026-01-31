import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

def hittingBtwn {ι Ω : Type*} [Preorder ι] [InfSet ι] (f : ι → Ω → ι) (s : Set ι) (c N : ι) : Ω → ι :=
  fun ω => c

lemma hittingBtwn_eq_left_of_all_mem
    [Preorder ι] [InfSet ι]
    (f : ι → Ω → ι) {s : Set ι}
    (h : ∀ i ω, f i ω ∈ s) (c N : ι) :
    hittingBtwn f s c N = fun _ : Ω => c := by
  have h_main : ∀ (ω : Ω), hittingBtwn f s c N ω = c := by
    intro ω
    rfl
  
  have h_final : hittingBtwn f s c N = fun _ : Ω => c := by
    funext ω
    rw [h_main ω]
    <;> simp
  
  apply h_final