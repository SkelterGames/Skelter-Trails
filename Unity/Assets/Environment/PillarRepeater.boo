import UnityEngine

class PillarRepeater (MonoBehaviour): 
	public RepeatedObject as Transform
	public NumRepeatsX as int = 5
	public NumRepeatsY as int = 5
	public NumRepeatsZ as int = 5
	public SpacingX as single = 20
	public SpacingY as single = 20
	public SpacingZ as single = 20

	def Start ():
		for x in range(NumRepeatsX):
			for y in range(NumRepeatsY):
				for z in range(NumRepeatsZ):
					Instantiate(RepeatedObject, 
					            Vector3(SpacingX * x, SpacingY * y, SpacingZ * z),
					            Quaternion.identity)
	
	def Update ():
		pass
