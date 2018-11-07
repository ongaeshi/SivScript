class Item
{
	Item()
	{
	}

	Item(const Vec2 position)
	{
        m_pos = position;
	}

	void update()
	{
		if (distanceFromCursor() < 100)
		{
			m_pos += (Cursor::PosF() - m_pos) * 0.20;
		}

		Circle(m_pos, 5.0).draw(Palette::White);
	}

	double distanceFromCursor() const
	{
		return m_pos.distanceFrom(Cursor::PosF());
	}

	private Vec2 m_pos;
}

void Main()
{
 	Graphics::SetBackground(ColorF(0.2, 0.3, 0.4));
 
 	Array<Item> items;
 
    Stopwatch stopwatch(true);
    int prev = 0;
 
 	while (System::Update())
 	{
        int t = stopwatch.ms();
 		if (t - prev > 50)
 		{
            items.push_back(Item(RandomVec2(Window::ClientRect())));
            
 			//stopwatch.restart();
            prev = t;
 		}

        for (uint i = 0; i < items.count(); i++)
        {
            items[i].update();
        }

        for (uint i = 0; i < items.count(); i++)
        {
            if (items[i].distanceFromCursor() < 30)
            {
                items.remove_at(i);
            }
        }
 
 		// Cursor
 		Circle(Cursor::PosF(), 30).drawFrame(1.0, Alpha(128));
 		Circle(Cursor::PosF(), 100).drawFrame(1.0, Alpha(80));
 
 		ClearPrint();
 		Print << items.size();
 	}
}