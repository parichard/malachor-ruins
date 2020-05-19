Effect("ColorControl")
{
	Enable(1);	
	PC()
	{
		GammaBrightness(0.48);
		GammaContrast(0.55);
	}

}
SunFlare()
{
	Angle(94.500000, 180.000000);
	Color(180, 0, 0);
	Size(3.0);
	FlareOutSize(0.0);
	NumFlareOuts(0);
	InitialFlareOutAlpha(0);
	HaloInnerRing(0.0, 255, 20, 20, 200);
	HaloMiddleRing(10.0, 177, 0, 0, 100);
	HaloOutterRing(60.0, 118, 0, 0, 0);
	SpikeColor(235,0,0,128);
	SpikeSize(20.0);
}

Effect("Precipitation")
{
	Enable(1);
	Type("Quads");
	Texture("fx_ember");
	ParticleSize(0.020);
	Color(255, 255, 255);
	Range(15.0);
	Velocity(0.15);
	VelocityRange(0.8);
	PS2()
	{
		ParticleDensity(80.0);
	}
	XBOX()
	{
		ParticleDensity(100.0);
	}
	PC()
	{
		ParticleDensity(10.0);
	}
	ParticleDensityRange(0.0);
	CameraCrossVelocityScale(0.9);
	CameraAxialVelocityScale(0.9);
	AlphaMinMax(0.25, 0.40);
	RotationRange(22);
}

Effect("Lightning")
{
	Enable(1);
	Color(255, 25, 25);
	SunlightFadeFactor(0.0);
	SkyDomeDarkenFactor(0.0);
	BrightnessMin(0.0);
	FadeTime(0.0);
	TimeBetweenFlashesMinMax(3.0, 5.0);
	TimeBetweenSubFlashesMinMax(0.01, 0.5);
	NumSubFlashesMinMax(2, 5);
	HorizonAngleMinMax(30, 60);
}

LightningBolt("skybolt")
{
	Texture("lightning");
	Width(30.0);
	FadeTime(1);
	BreakDistance(20.0);
	TextureSize(30.0);
	SpreadFactor(20.0);
	MaxBranches(2.0);
	BranchFactor(0.5);
	BranchSpreadFactor(8);
	BranchLength(80.0);
	InterpolationSpeed(0.4);
	NumChildren(1);
	ChildBreakDistance(15.0);
	ChildTextureSize(8.0);
	ChildWidth(1.0);
	ChildSpreadFactor(10.0);
	Color(255,25,25,255);
	ChildColor(255,25,25,150);
}
Effect("FogCloud")
{
	Enable(1);
	Texture("fluffy");
	Range(15.0, 100.0);
	Color(168, 172, 180, 128);
	Velocity(2.5, 0.0);
	Rotation(0.05);
	Height(10.0);
	ParticleSize(32.0);
	ParticleDensity(88.0);
}
Effect("Godray")
{
	Enable(1);
	MaxGodraysInWorld(300);
	MaxGodraysOnScreen(8);

	MaxViewDistance(80.0);
	FadeViewDistance(30.0);
	MaxLength(45.0);
	OffsetAngle(0.0);

	MinRaysPerGodray(2);
	MaxRaysPerGodray(4);
	RadiusForMaxRays(1.0);

	Texture("fx_godray");
	TextureScale(1.5, 1.5);
	TextureVelocity(0.0, -0.1, 0.0);
	TextureJitterSpeed(0.05);
}
Effect("Shadow")

{

	Enable(1)               
    BlurEnable(0)         
    Intensity(0.60)  

}
Effect("MotionBlur")
{
   Enable(1);
}

Effect("ScopeBlur")
{
   Enable(1);
}

Effect("Blur")
{
   Enable(1);
   MinMaxDepth(0.95,1.0);
}

Effect("hdr")
{
	Enable(1)
	DownSizeFactor(0.25)
	NumBloomPasses(4)
	MaxTotalWeight(1.0)
	GlowThreshold(0.5)
	GlowFactor(1.0)

	PS2()
	{
		MaxTotalWeight(1.1)
	}
}


