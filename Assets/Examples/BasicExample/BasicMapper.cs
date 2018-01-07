﻿//  UnityMVC
//  
//  Copyright (C) 2016-2018 Leon Moctezuma <leon.moctezuma@gmail.com>
//  
//  This software may be modified and distributed under the terms
//  of the MIT license.  See the LICENSE file for details.

public class BasicMapper : UnityMVC.Mapper
{
    protected override void StartMapping() { Map<BasicModel, BasicView, BasicController>(); }
}