project "assimp"
    kind "SharedLib"
    language "C++"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/assimp/**.h",
		"include/assimp/**.hpp",
		"include/assimp/**.inl"
    }
    
	filter "system:windows"
        systemversion "latest"

		defines 
		{ 
            "_CRT_SECURE_NO_WARNINGS"
		}

		filter "configurations:Debug"
			runtime "Debug"
			symbols "on"

		filter "configurations:Release"
			runtime "Release"
			optimize "on"
