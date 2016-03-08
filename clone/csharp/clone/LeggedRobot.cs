using System;

namespace clone
{
	public class LeggedRobot : Robot
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

		public LeggedRobot(LeggedRobot original) : base(original)
		{
			Console.WriteLine ("LeggedRobot Copy Constructor");
			this.deep_copy (original);
		}

		public override Robot clone()
		{
			return new LeggedRobot (this);
		}

		private void deep_copy(LeggedRobot original)
		{
			this.number_of_legs = original.number_of_legs;
		}
	}
}

