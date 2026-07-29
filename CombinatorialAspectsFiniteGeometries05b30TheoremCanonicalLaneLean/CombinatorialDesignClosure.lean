import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean.BlockDesign
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean.FiniteProjectivePlane
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean.BalancedIncompleteBlockDesign

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BlockDesignClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedDesignClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_design_endgame (A : AdmissibleClass) :
    ConstrainedDesignClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse