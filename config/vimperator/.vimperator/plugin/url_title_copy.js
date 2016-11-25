/*
 * vimperator-copy.js
 * vimperator-copy.js is Firefox extension Vimperator Plugin.
 *
 * file created in 2009/06/25 11:38:42.
 * LastUpdated :2009/06/25 16:11:27.
 * author iNo (http://www.serendip.ws/)
 *
 ************ USAGE **************
 *
 * :copyurl
 * (copying url)
 *
 * :copyurl -t
 * (copying title)
 *
 * :copyurl -T
 * (copying url and title with HTML tag string)
 *
 * :copyurl -T -i "hoge"
 * (copying url and title with HTML tag string, including id attribute)
 *
 * :copying -T -c "foo"
 * (copying url and title with HTML tag string, including class attribute)
 *
 *
 ************ COPYRIGHT **************
 *
 * Copyright (C) 2009 iNo http://www.serendip.ws/
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

liberator.modules.commands.addUserCommand(["cpurl", "copyurl"], "Copy document url",
    function(args) {
        if (!liberator.modules.buffer.URL || liberator.modules.buffer.URL == 'about:blank'){
            return false;
        }

        var copy2Clipboard = function(str) {
            const gClipboardHelper = Components.classes["@mozilla.org/widget/clipboardhelper;1"].getService(Components.interfaces.nsIClipboardHelper);
            gClipboardHelper.copyString(str);
        };
        var growlNotification = function(str) {
            var alertsService = Components.classes["@mozilla.org/alerts-service;1"]
                                    .getService(Components.interfaces.nsIAlertsService);
            alertsService.showAlertNotification("chrome://global/skin/icons/information-32.png", "Copy URL" , str);
        };
        var doCopy = function(str) {
            copy2Clipboard(str);
            growlNotification(str);
        };

        var url = liberator.modules.buffer.URL;
        var title = liberator.modules.buffer.title;
        if (args["-T"]) {
            var idStr = args["-id"] ? ' id="' + args["-id"] + '"' : '';
            var classStr = args["-class"] ? ' class="' + args["-class"] + '"' : '';
            var str = '<a href="' + url + '"' + idStr + classStr + '>' + title + '</a>';
            doCopy(str);
		} else if (args["-r"]) {
			var str = '`' + title + ' <' + url + '>`_';
			doCopy(str);
		} else if (args["-m"]) {
			var str = '[' + title + '](' + url + ' "' + title + '")';
			doCopy(str);
        } else if (args["-t"]) {
            doCopy(title);
        } else {
            doCopy(url);
        }
    }, {
        options : [
            [["-t"], commands.OPTION_NOARG, function(arg) { return /\w/.test(arg); }],
            [["-T"], commands.OPTION_NOARG, function(arg) { return /\w/.test(arg); }],
			[["-r"], commands.OPTION_NOARG, function(arg) { return /\w/.test(arg); }],
			[["-m"], commands.OPTION_NOARG, function(arg) { return /\w/.test(arg); }],
            [["-id", "-i"], commands.OPTION_STRING, function(arg) { return /\w/.test(arg); }],
            [["-class", "-c"], commands.OPTION_STRING, function(arg) { return /\w/.test(arg); }]
        ],
        argCount: "?",
        hereDoc: false,
        bang: false,
        count: false,
        literal: false
    }
);


/*
vim:fdl=0 fdm=marker:ts=4 sw=4 sts=0:
*/
