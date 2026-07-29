import compactGroupsHomeomorphismsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CompactHomSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  group : Group carrier
  continuousMul : ContinuousMul carrier

structure CompactAdmittedObject where
  space : CompactHomSpace
  compactGroup : Prop
  homogeneous : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  sphereGroup : Group sphereModel
  continuousMulSphere : ContinuousMul sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure CompactEndgameState where
  object : CompactAdmittedObject

def CompactWitnessClosed (O : CompactAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse
