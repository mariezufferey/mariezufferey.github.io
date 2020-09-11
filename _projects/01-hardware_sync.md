---
title: Hardware synchronization
# vignette: [[jonathan’s movies??]]
collaborators: Guillaume Witz
---

In order to be able to acquire long time-lapses of growing cells with regular fluorescence microscopy acquisitions, one has to minimize has much as possible photodamage. In particular, one can optimize a microscopy setup in such a way that the sample is only illuminated when the camera is actually recording an image. This is typically not achieved with conventional setups where a computer serves as central command and issues order to the different microscopy parts, introducing relatively long delays *e.g.* between turning illumination ON and starting camera recording. A way to go around that is to use the camera as central command, in a so-called hardware synchronization mode. In collaboration with Thomas Julou (UniBas) we wrote a detailed [description](https://github.com/vanNimwegenLab/MiM_NikonTi/blob/master/Docs/NikonTi_hardware_triggering.md) of how to achive such hardware triggering based on open source resources such as [MicroManager](https://micro-manager.org/) and [Arduino](https://www.arduino.cc/).