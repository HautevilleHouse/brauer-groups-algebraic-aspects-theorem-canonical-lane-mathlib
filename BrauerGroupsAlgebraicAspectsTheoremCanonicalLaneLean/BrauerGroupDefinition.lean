import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure BrauerGroup (K : Type) [Field K] where
  carrier : Set (CentralSimpleAlgebra K)
  mul : carrier → carrier → carrier
  one : carrier
  inv : carrier → carrier
  mul_assoc : ∀ a b c : carrier, mul (mul a b) c = mul a (mul (mul b c) c)
  one_mul : ∀ a : carrier, mul one a = a
  mul_one : ∀ a : carrier, mul a one = a
  mul_inv : ∀ a : carrier, mul a (inv a) = one
  inv_mul : ∀ a : carrier, mul (inv a) a = one

def BrauerGroupClosed (K : Type) [Field K] (G : BrauerGroup K) : Prop :=
  Group G

theorem brauer_group_closed (K : Type) [Field K] (G : BrauerGroup K) : BrauerGroupClosed K G :=
  by
    exact {
      mul_assoc := G.mul_assoc
      one_mul := G.one_mul
      mul_one := G.mul_one
      mul_inv := G.mul_inv
      inv_mul := G.inv_mul
    }

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse