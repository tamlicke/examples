using System;

namespace clone
{
	public abstract class Robot
	{
		public abstract Robot clone ();

		private int _number_of_sensors;

		public int number_of_sensors
		{
			get { return _number_of_sensors; }
			set { _number_of_sensors = value; }
		}

	}

}

