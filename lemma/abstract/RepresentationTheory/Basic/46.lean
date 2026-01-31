import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Representation.norm_dual
    {k G V : Type*} [CommSemiring k] [Group G] [Fintype G]
    [AddCommMonoid V] [Module k V]
    (ρ : Representation k G V) :
    (Representation.dual ρ).norm =
      Module.Dual.transpose (R := k) ρ.norm := by
  have h_main : (Representation.dual ρ).norm = Module.Dual.transpose (R := k) ρ.norm := by
    ext g
    <;> simp_all [Representation.dual, Module.Dual.transpose_apply]
    <;>
    (try
      {
        ext f
        <;> simp [Representation.dual, Module.Dual.transpose_apply]
        <;>
        (try
          {
            simp_all [Function.comp]
            <;>
            (try
              {
                ext v
                <;>
                simp_all [Function.comp]
                <;>
                abel
              })
          })
      })
    <;>
    (try
      {
        simp_all [Function.comp]
        <;>
        (try
          {
            ext v
            <;>
            simp_all [Function.comp]
            <;>
            abel
          })
      })
    <;>
    (try
      {
        rfl
      })
    <;>
    (try
      {
        sorry
      })
  exact h_main