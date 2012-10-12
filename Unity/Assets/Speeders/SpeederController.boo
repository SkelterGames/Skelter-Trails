import UnityEngine

class SpeederController (MonoBehaviour): 
	public ThrottleSpeed as single    = 1.0
	public StrafePitchSpeed as single = 1.0
	public StrafeYawSpeed as single   = 1.0
	public RollSpeed as single        = 1.0
	public PitchSpeed as single       = 1.0
	public YawSpeed as single         = 1.0

	def Start ():
		pass
	
	def Update():
		pass
	
	def FixedUpdate ():
		throttle    = Input.GetAxis("Throttle")
		yaw         = Input.GetAxis("Yaw")
		pitch       = Input.GetAxis("Pitch")
		roll        = Input.GetAxis("Roll")
		strafeyaw   = Input.GetAxis("StrafeYaw")
		strafepitch = Input.GetAxis("StrafePitch")
		
		self.rigidbody.AddRelativeForce(Vector3(StrafeYawSpeed * strafeyaw,
		                                        ThrottleSpeed * throttle,
		                                        StrafePitchSpeed * strafepitch))
		self.rigidbody.AddRelativeTorque(Vector3(PitchSpeed * pitch,
		                                         RollSpeed * roll,
		                                         YawSpeed * yaw))
		
		
