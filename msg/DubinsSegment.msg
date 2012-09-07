# east value of start of segment (meters)
float64 startEast
# north value of start of segment (meters)
float64 startNorth
# east value of end of segment (meters)
float64 endEast
# north value of end of segment (meters)
float64 endNorth
# desired speed for segment (m/s)
float32 speed
# east value of arc center (m) - if line segment, center is the same as start
float64 centerEast
# north value of arc center (m) - if line segment, center is the same as start
float64 centerNorth
# orientation of vehicle at segment endpoint (radians) - measured clockwise from north
float64 heading
# angle between segment start point and arc center (rad) - measured clockwise from north
float64 theta_min
# angle between segment end point and arc center (rad) - measured clockwise from north
float64 theta_max
# total turn angle made by arc (radians) = theta_max-theta_min
float64 theta_total
#  direction of arc
#  0 - clockwise - arc is drawn in a clockwise direction from theta_min to theta_max
#  1 - counterclockwise - arc is drawn in a counterclockwise direction from theta_min to theta_max
#  2 - na_line - segment is a line - does not apply
int8 ccw
# radius of arc segment - 0 for line segments
float64 radius
# Type of path segment is associated with - Reeds and Shepp's ("RS") or Single Polar Polynomial ("SPP")
string type
# Corresponding taskID number
uint16 taskID