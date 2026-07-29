import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure BrauerAdmittedObject where
  carrier : Type u
  [commRing : CommRing carrier]
  azumayaAlgebra : carrier → carrier → carrier
  centralSimple : Prop
  brauerClass : Set (Type u)
  identityUpToMorita : Prop
  conclusion : centralSimple ∧ identityUpToMorita

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse