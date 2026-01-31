import Mathlib

-- 83
lemma PreGaloisCategory.IsFundamentalGroup.subgroup_stabilizer_nontrivial_if_orbit_large
    {G α : Type*} [Group G] [Fintype G] [MulAction G α]
    (x : α)
    [Fintype (↑(MulAction.orbit G x))]
    (hcard : Fintype.card (MulAction.orbit G x) > 1) :
    (MulAction.stabilizer G x).index < Fintype.card G := by
  sorry