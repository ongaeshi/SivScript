 void Main()
 {
    Window::Resize(640, 480);

  	Grid<double> grid(16, 12);

    for (int x = 0; x < grid.width(); x++) {
        for (int y = 0; y < grid.height(); y++)  {
            grid[x, y] = Random(0.4, 2.0);
        }
    }
 
     while (System::Update()) {
        auto p = Vec2(0, 0);

        for (int x = 0; x < grid.width(); x++) {
            for (int y = 0; y < grid.height(); y++)  {
                Circle(x * 40 + 20, y * 40 + 20, 15)
                    .draw(ColorF(0.0, 1.0, 0.0, Periodic::Sine0_1(1 * grid[x, y])));
            }
        }
     }
 }