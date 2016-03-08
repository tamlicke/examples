using System;

namespace clone
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			Console.WriteLine("** Start Main **");
			Robot robotPreference = setupWheeled();
			use(robotPreference);
			robotPreference = setupLegged ();
			use(robotPreference);
			Console.WriteLine("** End Main **");

		}

		public static Robot setupWheeled()
		{
			Console.WriteLine("**** Start setup ****");
			return new WheeledRobot();
		}


		public static Robot setupLegged()
		{
			Console.WriteLine("**** Start setup ****");
			return new LeggedRobot();
		}


		public static void use( Robot obj)
		{
			Console.WriteLine("**** Start use ****");
			Robot copy = null;

			obj.number_of_sensors = 2;

		    if (obj is Robot)
			{
				Console.WriteLine("Cloning object");
			}
		    copy = obj.clone();
		
			Console.WriteLine($"Original object value = {obj.number_of_sensors}");
			Console.WriteLine($"Copy object value = {copy.number_of_sensors}");
		    Console.WriteLine("Change copy object");
			copy.number_of_sensors = 15;
			Console.WriteLine($"Original object value = {obj.number_of_sensors}");
			Console.WriteLine($"Copy object value = {copy.number_of_sensors}");
		    Console.WriteLine("**** End use ****");
	
		}
	}
}
