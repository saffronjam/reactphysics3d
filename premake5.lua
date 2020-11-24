project "reactphysics3d"
    kind "StaticLib"
    language "C++"
    staticruntime "on"
	
	outputDirectory = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
	
	targetdir ("Bin/" .. outputDirectory .. "/%{prj.name}")
	objdir ("Bin-Int/" .. outputDirectory .. "/%{prj.name}")
	
    files
    {
        "include/reactphysics3d/**.h",
        "include/reactphysics3d/**.cpp",
        "src/**.h",
        "src/**.cpp"
    }

    includedirs
    {
        "include",
        "src"
    }
	
	disablewarnings 
	{ 
		"4018",
		"4099",
		"4244",
		"4267",
		"4305",
		"4715",
		"4996"
	}
    
    filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"