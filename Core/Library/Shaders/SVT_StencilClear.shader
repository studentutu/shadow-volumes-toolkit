// Shadow Volumes Toolkit
// Copyright 2013 Gustav Olsson
Shader "Shadow Volumes/Stencil Clear"
{
	SubShader
	{
		Tags
		{
			"Queue" = "AlphaTest+500"
			"IgnoreProjector" = "True"
		}
		
		Pass
		{
			Stencil
			{
				Comp Always
				Pass Zero
			}
			
			Lighting Off
			Cull Off
			ZTest Always
			ZWrite Off
			Blend Zero One
			
			Fog
			{
				Mode Off
			}
			
			CGPROGRAM
			#pragma vertex ScreenVertex
			#pragma fragment ScreenFragment
			#include "../Includes/Screen.cginc"
			ENDCG
		}
	}
}