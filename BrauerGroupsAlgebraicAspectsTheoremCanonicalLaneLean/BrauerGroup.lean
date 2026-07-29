import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure BrauerGroup (k : Type) [Field k] where
  carrier : Type
  eq : carrier → carrier → Prop
  mul : carrier → carrier → carrier
  inv : carrier → carrier
  one : carrier
  mulAssoc : ∀ a b c : carrier, eq (mul (mul a b) c) (mul a (mul b c))
  oneMul : ∀ a : carrier, eq (mul one a) a
  mulOne : ∀ a : carrier, eq (mul a one) a
  invMul : ∀ a : carrier, eq (mul (inv a) a) one
  mulInv : ∀ a : carrier, eq (mul a (inv a)) one
  eqRefl : ∀ a : carrier, eq a a
  eqSymm : ∀ a b : carrier, eq a b → eq b a
  eqTrans : ∀ a b c : carrier, eq a b → eq b c → eq a c
  mulCongr : ∀ a b c d : carrier, eq a b → eq c d → eq (mul a c) (mul b d)

structure BrauerAdmittedObject (k : Type) [Field k] where
  group : BrauerGroup k
  centralSimpleAlgebra : Prop
  brauerEquivalence : Prop
  conclusion : brauerEquivalence

def BrauerWitnessClosed (O : BrauerAdmittedObject k) : Prop :=
  O.brauerEquivalence

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse