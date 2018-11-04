void Main()
{
 	Stopwatch stopwatch(true);

    while (System::Update())
    {
 		const double t = (stopwatch.ms() / 1000.0) * ToRadians(-30);
 
 		const Transformer2D t0(Mat3x2::Translate(Window::Center()));
 
 		Circle(40).draw(Palette::Orange);
 
 		Circle(160).drawFrame(1);
 
 		const Transformer2D t1(Mat3x2::Translate(160, 0).rotated(t));
 
 		Circle(20).draw(Palette::Skyblue);
 
 		Circle(40).drawFrame(1);
 
 		const Transformer2D t2(Mat3x2::Translate(40, 0).rotated(t * 4));
 
 		Circle(10).draw(Palette::White);
    }
}

