using System;

namespace clone
{
	public abstract class Robot
	{
		public Robot ()
		{
			Console.WriteLine ("Robot Default Constructor");
		}

		public Robot (Robot original)
		{
			Console.WriteLine ("Robot Copy Constructor");
			this.deep_copy(original);
		}

		public abstract Robot clone ();

		private int _number_of_sensors;

		public int number_of_sensors
		{
			get { return _number_of_sensors; }
			set { _number_of_sensors = value; }
		}

		private void deep_copy(Robot original)
		{
			this.number_of_sensors = original.number_of_sensors;
		}


	}

}

