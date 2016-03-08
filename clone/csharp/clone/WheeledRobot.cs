using System;

namespace clone
{
	public class WheeledRobot : Robot
	{
		private int number_of_wheels = 0; 

		public WheeledRobot ()
		{
			Console.WriteLine ("WheeledRobot Default Constructor");
		}

		public WheeledRobot(WheeledRobot original) : base(original)
		{
			Console.WriteLine ("WheeledRobot Copy Constructor");
			this.deep_copy (original);
		}

		public override Robot clone()
		{
			return new WheeledRobot (this);
		}

		private void deep_copy(WheeledRobot original)
		{
			this.number_of_wheels = original.number_of_wheels;
		}


	}
}

