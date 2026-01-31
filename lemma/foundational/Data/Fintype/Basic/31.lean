import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

noncomputable def Finite.fintype_pi {ι : Type*} [Finite ι] (α : ι → Type*)
    [∀ i, Fintype (α i)] : Fintype (∀ i, α i) := by
  have h_fintype_ι : Fintype ι := by
    apply Fintype.ofFinite
    <;> infer_instance
  
  have h_main : Fintype (∀ i, α i) := by
    classical
    -- Use the fact that ι is finite and each α i is finite to construct the Fintype instance for the product type.
    letI : Fintype ι := h_fintype_ι
    -- Now that we have a local Fintype instance for ι, we can use the Fintype.pi instance to get the Fintype instance for the product type.
    infer_instance
  
  exact h_main