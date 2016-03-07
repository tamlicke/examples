using System;

namespace clone
{
	public class LeggedRobot
	{
		private int _number_of_legs = 0;

		public int number_of_legs
		{
			get { return _number_of_legs; }
			set { _number_of_legs = value; }

		}

		public LeggedRobot ()
		{
			Console.WriteLine ("Default Constructor!");
		}
	}
}

