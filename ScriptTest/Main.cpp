
#include <Siv3D.hpp> // OpenSiv3D v0.3.0

namespace {
    void SetDir(const FilePath& path)
    {
        ::s3d::Windows::FileSystem::SetCurrentDirectory(path);
    }
}

#include <Windows.h>

namespace {
    Array<String> getArgs()
    {
        auto argv = Array<String>();

        int nArgs = 0;
        LPWSTR* szArglist = ::CommandLineToArgvW(::GetCommandLineW(), &nArgs);

        for (int i = 1; i < nArgs; i++) {
            argv << Unicode::FromWString(szArglist[i]);
        }
        ::LocalFree(szArglist);

        return argv;
    }
}

void Main()
{
    SetDir(::s3d::Windows::FileSystem::WorkingDirectory());

    auto args = getArgs();
    ManagedScript main(args[0]);

    while (System::Update())
    {
        main.run();
    }
}
