void Main()
{
    Window::Resize(640, 480, false);
   
    auto m = MainLoop();

    while (System::Update())
    {
        m.loop();
    }
}

class MainLoop
{
    MainLoop()
    {
        mBg = Texture("image/windmill.png");
        mTexture = Texture("image/siv3d-kun.png");
    }

    void loop()
    {
        Graphics::SetBackground(ColorF(0.8, 0.9, 1.0));

        mBg.drawAt(320, 240, ColorF(1, 1, 1, 0.3));
        mTexture.drawAt(320, 240);
    }

    Texture mBg;
    Texture mTexture;
}
