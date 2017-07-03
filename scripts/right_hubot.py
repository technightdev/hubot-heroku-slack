# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   right, hubot
#
# Author:
#   maxgoedjen

import os

from scripts.hubot_script import *

class RightHubot(HubotScript):
    
    @hear('yafeelme')
    def right(self, message, matches):
        return 'I feel ya.'
