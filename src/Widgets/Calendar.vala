/*-
 * Copyright (c) 2015 Wingpanel Developers (http://launchpad.net/wingpanel)
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Library General Public License as published by
 * the Free Software Foundation, either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

public class DateTime.Widgets.Calendar : Gtk.Calendar {
	public Calendar () {
		this.margin_start = 10;
		this.margin_end = 10;
	}

	public void show_today () {
		var local_time = new GLib.DateTime.now_local ();

		if (local_time == null) {
			critical ("Can't get the local time.");
			return;
		}

		this.select_month (local_time.get_month () - 1, local_time.get_year ());
		this.select_day (local_time.get_day_of_month ());
	}
}