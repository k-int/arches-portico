from django.views.generic import View
from django.http import HttpResponse, HttpResponseBadRequest
import requests

from arches_portico.settings import OS_API_KEY


class PorticoBasemaps(View):
    LAYERS = {
        "leisure": "Leisure_3857",
        "outdoor": "Outdoor_3857",
        "light": "Light_3857",
        "road": "Road_3857",
    }

    def get(self, request, layer, z, x, y):
        if layer not in self.LAYERS:
            return HttpResponseBadRequest("Invalid layer")

        try:
            os_layer = self.LAYERS[layer]
            url = f"https://api.os.uk/maps/raster/v1/zxy/{os_layer}/{z}/{x}/{y}.png?key={OS_API_KEY}"
            response = requests.get(url)
            return HttpResponse(response.content, content_type="image/png")

        except:
            return HttpResponse(status=503)

