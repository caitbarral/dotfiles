class DefaultColor(object):
    """
    This class should have the default colors for every segment.
    Please test every new segment with this theme first.
    """
    # RESET is not a real color code. It is used as in indicator
    # within the code that any foreground / background color should
    # be cleared
    RESET = -1

    USERNAME_FG = 250
    USERNAME_BG = 240
    USERNAME_ROOT_BG = 124

    HOSTNAME_FG = 250
    HOSTNAME_BG = 238

    HOME_SPECIAL_DISPLAY = True
    HOME_BG = 31  # blueish
    HOME_FG = 15  # white
    PATH_BG = 237  # dark grey
    PATH_FG = 250  # light grey
    CWD_FG = 254  # nearly-white grey
    SEPARATOR_FG = 244

    READONLY_BG = 124
    READONLY_FG = 254

    SSH_BG = 166  # medium orange
    SSH_FG = 254

    REPO_CLEAN_BG = 148  # a light green color
    REPO_CLEAN_FG = 0  # black
    REPO_DIRTY_BG = 161  # pink/red
    REPO_DIRTY_FG = 15  # white

    JOBS_FG = 39
    JOBS_BG = 238

    CMD_PASSED_BG = 236
    CMD_PASSED_FG = 15
    CMD_FAILED_BG = 161
    CMD_FAILED_FG = 15

    SVN_CHANGES_BG = 148
    SVN_CHANGES_FG = 22  # dark green

    GIT_AHEAD_BG = 240
    GIT_AHEAD_FG = 250
    GIT_BEHIND_BG = 240
    GIT_BEHIND_FG = 250
    GIT_STAGED_BG = 22
    GIT_STAGED_FG = 15
    GIT_NOTSTAGED_BG = 130
    GIT_NOTSTAGED_FG = 15
    GIT_UNTRACKED_BG = 52
    GIT_UNTRACKED_FG = 15
    GIT_CONFLICTED_BG = 9
    GIT_CONFLICTED_FG = 15

    GIT_STASH_BG = 221
    GIT_STASH_FG = 0

    VIRTUAL_ENV_BG = 35  # a mid-tone green
    VIRTUAL_ENV_FG = 00

    BATTERY_NORMAL_BG = 22
    BATTERY_NORMAL_FG = 7
    BATTERY_LOW_BG = 196
    BATTERY_LOW_FG = 7

    AWS_PROFILE_FG = 39
    AWS_PROFILE_BG = 238

    TIME_FG = 250
    TIME_BG = 238


class Color(DefaultColor):
    """
    This subclass is required when the user chooses to use 'default' theme.
    Because the segments require a 'Color' class for every theme.
    """
    pass

"""
absolute colors based on
https://github.com/morhetz/gruvbox/blob/master/colors/gruvbox.vim
"""
dark0 = 235
dark1 = 237
dark2 = 239
dark3 = 241
dark4 = 243

light0 = 229
light1 = 223
light2 = 250
light3 = 248
light4 = 246

dark_gray  = 245
light_gray = 244

neutral_red    = 124
neutral_green  = 106
neutral_yellow = 172
neutral_blue   = 66
neutral_purple = 132
neutral_aqua   = 72
neutral_orange = 166

bright_red    = 167
bright_green  = 142
bright_yellow = 214
bright_blue   = 109
bright_purple = 175
bright_aqua   = 108
bright_orange = 208

faded_red    = 88
faded_green  = 100
faded_yellow = 136
faded_blue   = 24
faded_purple = 96
faded_aqua   = 66
faded_orange = 130

class Color(DefaultColor):
    USERNAME_ROOT_BG = faded_red
    USERNAME_BG = dark2
    USERNAME_FG = bright_purple

    HOSTNAME_BG = dark1
    HOSTNAME_FG = bright_purple

    HOME_SPECIAL_DISPLAY = True
    HOME_BG = neutral_blue
    HOME_FG = light2
    PATH_BG = dark3
    PATH_FG = light3
    CWD_FG = light2
    SEPARATOR_FG = dark_gray

    READONLY_BG = bright_red
    READONLY_FG = light0

    SSH_BG = faded_purple
    SSH_FG = light0

    REPO_CLEAN_BG = faded_green
    REPO_CLEAN_FG = dark1
    REPO_DIRTY_BG = faded_orange
    REPO_DIRTY_FG = light0

    JOBS_FG = neutral_aqua
    JOBS_BG = dark1

    CMD_PASSED_FG = light4
    CMD_PASSED_BG = dark1
    CMD_FAILED_FG = light0
    CMD_FAILED_BG = neutral_red

    SVN_CHANGES_FG = REPO_DIRTY_FG
    SVN_CHANGES_BG = REPO_DIRTY_BG

    GIT_AHEAD_BG = dark2
    GIT_AHEAD_FG = light3
    GIT_BEHIND_BG = dark2
    GIT_BEHIND_FG = light3
    GIT_STAGED_BG = neutral_green
    GIT_STAGED_FG = light0
    GIT_NOTSTAGED_BG = neutral_orange
    GIT_NOTSTAGED_FG = light0
    GIT_UNTRACKED_BG = faded_red
    GIT_UNTRACKED_FG = light0
    GIT_CONFLICTED_BG = neutral_red
    GIT_CONFLICTED_FG = light0
    GIT_STASH_BG = neutral_yellow
    GIT_STASH_FG = dark0

    VIRTUAL_ENV_BG = faded_green
    VIRTUAL_ENV_FG = light0

    BATTERY_NORMAL_BG = neutral_green
    BATTERY_NORMAL_FG = dark2
    BATTERY_LOW_BG = neutral_red
    BATTERY_LOW_FG = light1

    AWS_PROFILE_FG = neutral_aqua
    AWS_PROFILE_BG = dark1

    TIME_FG = light2
    TIME_BG = dark4

