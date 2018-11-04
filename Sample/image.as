void Main()
{
    Window::Resize(640, 480, false);
   
    auto bg = Texture("image/windmill.png");
    auto texture = Texture("image/siv3d-kun.png");

    while (System::Update())
    {
        Graphics::SetBackground(ColorF(0.8, 0.9, 1.0));

        bg.drawAt(320, 240, ColorF(1, 1, 1, 0.3));
        texture.drawAt(320, 240);
    }
}
