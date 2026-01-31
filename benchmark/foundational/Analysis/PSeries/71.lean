import Mathlib

lemma Real.summable_norm_pow_div_add {α : Type*} [RCLike α]
    (x : α) (q k : ℕ) (hq : 1 < q) :
    Summable fun n : ℕ => ‖x‖ / ‖(↑n + k : α) ^ q‖ := by
  sorry
