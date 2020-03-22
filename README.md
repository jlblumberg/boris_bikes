### [Makers Academy](http://www.makersacademy.com) - Week 1 Project

Boris Bike Challenge 
-

[Outline](#Outline) | [Installation Instructions](#Installation) | [Feature Tests](#Feature_Tests) | [User Stories](#Story) | [Objects & Methods](#Methods) | [Future Work](#Future_Work)


## <a name="Outline">Outline</a>
 
Create a network of docking stations and bikes that anyone can use by building a program that will emulate all the docking stations, bikes, and infrastructure required.

## <a name="Installation">Installation Instructions</a>

Clone this repository and cd into it.

```
$ git clone https://github.com/jlblumberg/boris_bikes.git
$ cd boris_bikes
```
Load dependencies with bundle.
```
$ gem install bundle
$ bundle
```

Load the app in IRB.
```
$ irb
2.6.3 :001 > load './lib/docking_station.rb'
 => true
 2.6.3 :002 > load './lib/bike.rb'
 => true
```

## <a name="Feature_Tests">Feature Tests</a>

```
2.6.3 :003 > station = DockingStation.new
2.6.3 :004 > bike = Bike.new

# To check if a bike is working
2.6.3 :006 > bike.working?
 => true

# To dock at station, use .dock on the station and pass the bike as an argument,
# This will fail if the docking station is full

2.6.3 :005 > station.dock(bike)
 => [#<Bike:0x007fdb4d9b5250 @working=true>]

```

## <a name="Story">User Stories</a>

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a person,
So that I can use a bike,
I'd like to get a bike from a docking station.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
```

## <a name="Methods">Objects & Methods</a>

### Bike


| Methods        | Description                                            |
|----------------|--------------------------------------------------------|
| Bike.new       | Creates a new instance of a bike                       |
| .working?      | Checks if the bike is working                          |
  


### DockingStation


| Methods            | Description                                                                     |
|--------------------|---------------------------------------------------------------------------------|
| DockingStation.new | Creates a new instance of a docking station                                     |
| .dock(bike)        | docks a bike in the station                                                     |
| .release_bike     | releases a docked bike from the station if one is available                     |
| .full?            | returns true if the bike dock is full                                            |
| .empty?            | returns true if the bike dock is empty                                          |


## <a name="Future_Work">Future Work</a>

In the future I would like to add functionality to only release bikes if they are not broken, and further to accept bikes whether they are broken or working. Taking that one step further, I would add a repair system to fix broken bikes.