import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

def ConstrainedBrauerGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brauer_group_endgame (A : AdmissibleClass) : ConstrainedBrauerGroupClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse