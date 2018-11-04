void Main()
{
    Window::Resize(480, 320);

    auto m = MainLoop();

    while (System::Update())
    {
        Graphics::SetBackground(ColorF(0.8, 0.9, 1.0));
        m.loop();
    }
}

class MainLoop
{
    MainLoop()
    {
        mMoon = Texture(Emoji("🌙"), TextureDesc::Mipped);
    }

    void loop()
    {
        // Print << mCount;

        if (KeySpace.down())
        {
            Print <<"Hoge";
        }

        mMoon.drawAt(240, 120);

        mCount++;
    }

    int mCount = 0;
    Texture mMoon;
}
