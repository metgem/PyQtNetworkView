"""
    A set of widgets based on QNetworkView and QNetworkScene for network visualization.
"""

from ._version import *

if IS_COMPILED:
    from .NetworkView import (Node, Edge, RADIUS,
                              NetworkScene as BaseNetworkScene,
                              NetworkStyle, DefaultStyle)
    from .style import read_css, style_to_json, style_to_cytoscape
                              
    class NetworkScene(BaseNetworkScene):
        def setLayout(self, layout, scale=0):
            super().setLayout(layout.ravel(), scale)
            
    def style_from_css(css):
        result = read_css(css)
        
        if result is None:
            return DefaultStyle()
        
        return NetworkStyle(*result)
else:
    from .scene import Node, Edge, NetworkScene, RADIUS
    from .style import (NetworkStyle, DefaultStyle,
                        style_from_css, style_to_json, style_to_cytoscape)
    
from .view import NetworkView, MiniMapGraphicsView