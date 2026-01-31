import Mathlib

namespace NNReal

lemma pow_one_right (a : ℝ≥0) : a ^ (1 : ℕ) = a := by
  simpa using one_pow a

end NNReal