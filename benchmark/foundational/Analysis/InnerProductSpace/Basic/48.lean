import Mathlib

variable (E : Type*) [NormedAddCommGroup E] [InnerProductSpace ℂ E]

lemma inner_real_im_eq_zero_of_self (x : E) :
    Complex.im (inner ℂ x x) = 0 := by
  sorry