

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import default_colors, reverse, bold, normal, default

cyan = 80
red = 1
orange = 202
yellow = 214
magentaDark = 99
magentaLight = 177
lightBlue = 111
darkBlue = 69
green = 35
offWhite = 244 
purple = 55

# pylint: disable=too-many-branches,too-many-statements
class Zenburn(ColorScheme):
    progress_bar_color = red

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            if context.selected:
                attr = reverse
            else:
                attr = normal
            if context.empty or context.error:
                fg = 241
                bg = 177
            if context.border:
                fg = 69
            if context.image:
                fg = orange
            if context.video:
                fg = 66
            if context.audio:
                fg = 116
            if context.document:
                fg = red
            if context.container:
                attr |= bold
                fg = yellow
            if context.directory:
                attr |= bold
                fg = darkBlue
            elif context.executable and not \
                    any((context.media, context.container,
                         context.fifo, context.socket)):
                attr |= bold
                fg = magentaDark
            if context.socket:
                fg = 180
                attr |= bold
            if context.fifo or context.device:
                fg = 144
                if context.device:
                    attr |= bold
            if context.link:
                fg = offWhite if context.good else 116
                bg = cyan
            if context.bad:
                bg = 124
            if context.tag_marker and not context.selected:
                attr |= bold
                if fg in (174, 95):
                    fg = 248
                else:
                    fg = 174
            if not context.selected and (context.cut or context.copied):
                fg = 108
                bg = 234
            if context.main_column:
                if context.selected:
                    attr |= bold
                if context.marked:
                    attr |= bold
                    fg = cyan
            if context.badinfo:
                if attr & reverse:
                    bg = 95
                else:
                    fg = 95

        elif context.in_titlebar:
            attr |= bold
            if context.hostname:
                fg = 174 if context.bad else 180
            elif context.directory:
                fg = cyan
            elif context.tab:
                if context.good:
                    bg = 180
            elif context.link:
                fg = 116

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = magentaDark
                elif context.bad:
                    fg = 174
            if context.marked:
                attr |= bold | reverse
                fg = cyan
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = 174
            if context.loaded:
                bg = self.progress_bar_color
            if context.vcsinfo:
                fg = 116
                attr &= ~bold
            if context.vcscommit:
                fg = 144
                attr &= ~bold

        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = 116

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color

        if context.vcsfile and not context.selected:
            attr &= ~bold
            if context.vcsconflict:
                fg = 95
            elif context.vcschanged:
                fg = 174
            elif context.vcsunknown:
                fg = 174
            elif context.vcsstaged:
                fg = 108
            elif context.vcssync:
                fg = 108
            elif context.vcsignored:
                fg = default

        elif context.vcsremote and not context.selected:
            attr &= ~bold
            if context.vcssync:
                fg = 108
            elif context.vcsbehind:
                fg = 174
            elif context.vcsahead:
                fg = 116
            elif context.vcsdiverged:
                fg = 95
            elif context.vcsunknown:
                fg = 174

        return fg, bg, attr
