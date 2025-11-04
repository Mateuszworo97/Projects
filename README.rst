About
------------

Apiary Water Dispensing System - This is a device design whose purpose is to automatically supply bee water from an underground tank.
In hard-to-reach places and with limited access to fresh water.
The system's task is also to display current data regarding time, temperature and light intensity on the display.
The system will enable the pump to be turned on at a specific time for a specific period of time.

In the future, this project will be developed with additional functionalities.
Currently i am working on two versions of the system, which will allow reduced the size of the PCB board and the number of components used.
One version will use the same components as the current one, but will be smaller in size.
The second version will allow include new components that will reduce the size of the PCB board, but won't limit possibility of expended the system in the future. The PCB board will contains derivations for additional components that can be added later.
The third version will expand the funtionality of the system with wireless data transmission using LORAWAN technology 
Target of the system is to send data to cloud platform such as THINGSBOARD or TTN (The Things Network).
Definitely, such action will investigate natural environment around device and bees activity. 
Currently, the first of version system has contributed to better understanding of bees behavior in hard to reach places with limited access to fresh water.
I think that the third version of the system will be a great tool for beekeepers to monitor the environment around the beehive and bees activity.
Above all , the system will allow to achieve the significantlevel of automation and considerably contributed to increase the capacity and coverage of the lorawan Network
Operation
------------


The system measures time, temperature, humidity, light intensity, battery voltage, 
value and direction of battery current flow, power consumered and delivered to battery,
Voltage of photovoltaic panel, value of photovoltaic panel.
The data is shown on the display.
By default, the pump is turned on for 1 minute. Every hour.
Using push buttons, we can increase the pump activation time from 1 to 59 minutes.
Using the buttons, we can also change the time at which the alarm will turn on (pump on).
The next time the alarm will turn on will be increased by the hour value displayed on the display.
we can delay the pump activation value from 1 to 16.




Development
------------


1. Simplification 
2. Adding an automatic and manual control system
3. Enriching the project with wireless data transmission using  LORAWAN technology
4. Desiging a much smaller PCB
5. Creating own MPPT board


Components
------------

Contains a list of components used to build the system

Refer to `docs/components.rst`.



Hardware
------------

Contains documentation of the sensors and components used.
-Diagram of the electronic system of the device.

Refer to `docs/hardware`.




Software
------------

-Diagram of the software nic system of the device.
Refer to `docs/software`.


License
------------
