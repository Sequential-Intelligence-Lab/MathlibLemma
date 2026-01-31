import Mathlib

lemma pow_gcd_mem_subgroup {G : Type*} [Group G] (S : Subgroup G)
    {x : G} {m n : ℕ}
    (hm : x ^ m ∈ S) (hn : x ^ n ∈ S) :
    x ^ Nat.gcd m n ∈ S := by
  sorry