bout
-----

.. raw:: html

   <div style="text-align: justify;">

   <p>
   <strong>Apiary Water Dispensing System</strong> — This project aims to automatically supply bees with water from an underground tank,
   especially in hard-to-reach areas with limited access to fresh water.
   The system also displays current data such as time, temperature, and light intensity.
   It allows the pump to be activated at specific times for a defined duration.
   </p>

   <p>
   In the future, this project will be extended with new functionalities.
   Currently, I am working on two versions of the system that will reduce the size of the PCB and the number of components used.
   </p>

   <ul>
     <li><strong>Version 1:</strong> Uses the same components as the current version but in a smaller layout.</li>
     <li><strong>Version 2:</strong> Introduces new components to reduce PCB size while keeping the system expandable.</li>
     <li><strong>Version 3:</strong> Adds wireless data transmission using <em>LORAWAN</em> technology and integration with cloud platforms such as <em>ThingsBoard</em> or <em>TTN (The Things Network)</em>.</li>
   </ul>

   <p>
   Such integration will enable environmental monitoring and provide insights into bee activity.
   The first version has already contributed to a better understanding of bee behavior in remote locations.
   The third version is expected to be a valuable tool for beekeepers, helping them monitor the environment around hives and bee activity.
   </p>

   <p>
   Overall, this system will significantly enhance automation and contribute to the expansion and capacity of the <em>LORAWAN</em> network.
   </p>

   </div>
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

Visualization
------------
.. image::  https://github.com/Mateuszworo97/Projects/blob/experiment/Embedded_projects/docs/images/3D_visualization.PNG
    :alt: Visualization
    :align: center

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
