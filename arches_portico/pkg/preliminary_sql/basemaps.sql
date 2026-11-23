-- Remove sources and layers to begin, so we can update without conflicts
DELETE FROM map_sources WHERE name IN ('os_map_leisure', 'os_map_light', 'os_map_outdoor', 'os_map_road');
DELETE FROM map_layers WHERE maplayerid in ('290d5beb-a49e-4c54-80c1-f6f9a04d1e9d', '1a659606-d98d-421f-8bdf-968e0b194c3e', '18ff606e-9a02-4dfe-b70f-58cae1c80a83', 'c00bb9af-ed8e-4c59-bff4-a79972b31aaf');

INSERT INTO map_sources(name, source)
VALUES ('os_map_leisure', '{"type": "raster", "tiles": ["/escc-os-basemap/leisure/{z}/{x}/{y}.png"], "tileSize": 256}');

INSERT INTO map_layers(maplayerid, name, layerdefinitions, isoverlay, icon, activated, addtomap, searchonly, sortorder, ispublic)
   VALUES ('290d5beb-a49e-4c54-80c1-f6f9a04d1e9d', 
           'OS Map Leisure', 
           '[{"id": "os_map_leisure", "type": "raster", "source": "os_map_leisure", "maxzoom": 22, "minzoom": 0}]', 
           FALSE,
           'fa fa-globe',
           TRUE,
           FALSE,
           FALSE,
           0,
           TRUE
           );


INSERT INTO map_sources(name, source)
VALUES ('os_map_light', '{"type": "raster", "tiles": ["/escc-os-basemap/light/{z}/{x}/{y}.png"], "tileSize": 256}');

INSERT INTO map_layers(maplayerid, name, layerdefinitions, isoverlay, icon, activated, addtomap, searchonly, sortorder, ispublic)
   VALUES ('1a659606-d98d-421f-8bdf-968e0b194c3e', 
           'OS Map Light', 
           '[{"id": "os_map_light", "type": "raster", "source": "os_map_light", "maxzoom": 22, "minzoom": 0}]', 
           FALSE,
           'fa fa-globe',
           TRUE,
           FALSE,
           FALSE,
           0,
           TRUE
           );


INSERT INTO map_sources(name, source)
VALUES ('os_map_outdoor', '{"type": "raster", "tiles": ["/escc-os-basemap/outdoor/{z}/{x}/{y}.png"], "tileSize": 256}');

INSERT INTO map_layers(maplayerid, name, layerdefinitions, isoverlay, icon, activated, addtomap, searchonly, sortorder, ispublic)
   VALUES ('18ff606e-9a02-4dfe-b70f-58cae1c80a83', 
           'OS Map Outdoor', 
           '[{"id": "os_map_outdoor", "type": "raster", "source": "os_map_outdoor", "maxzoom": 22, "minzoom": 0}]', 
           FALSE,
           'fa fa-globe',
           TRUE,
           FALSE,
           FALSE,
           0,
           TRUE
           );


INSERT INTO map_sources(name, source)
VALUES ('os_map_road', '{"type": "raster", "tiles": ["/escc-os-basemap/road/{z}/{x}/{y}.png"], "tileSize": 256}');

INSERT INTO map_layers(maplayerid, name, layerdefinitions, isoverlay, icon, activated, addtomap, searchonly, sortorder, ispublic)
   VALUES ('c00bb9af-ed8e-4c59-bff4-a79972b31aaf', 
           'OS Map Road', 
           '[{"id": "os_map_road", "type": "raster", "source": "os_map_road", "maxzoom": 22, "minzoom": 0}]', 
           FALSE,
           'fa fa-globe',
           TRUE,
           FALSE,
           FALSE,
           0,
           TRUE
           );
