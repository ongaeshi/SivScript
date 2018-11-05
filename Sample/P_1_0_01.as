void Main()
{
    Window::Resize(720, 720);

    while (System::Update()) {
        auto c = Cursor::Pos();
        auto rs = c.x + 1;

        Graphics::SetBackground(HSV(c.y/2, 1, 1));
        Rect(360-rs/2, 360-rs/2, rs, rs).draw(HSV(360-c.y/2, 1, 1));
    }
}