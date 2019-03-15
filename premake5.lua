project "Yoga"

    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "yoga/**/*.c"
    }

    filter "system:windows"
        buildoptions { "-std=c11", "-lgdi32" }
        systemversion "10.0.17134.0"
        staticruntime "On"
        
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
