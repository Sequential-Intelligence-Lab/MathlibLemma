import Mathlib

lemma mulAction_smul_conj {V G : Type*} [Group G] [Mul V] [MulAction G V]
    (g h : G) (x : V) :
    (g * h * g⁻¹) • x = g • (h • (g⁻¹ • x)) := by
  sorry