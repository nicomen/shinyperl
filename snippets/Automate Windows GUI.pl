#!/usr/bin/env perl -W # [% title = 'Automate Windows GUI - Win32::GuiTest'; BLOCK code %]

use File::Basename;
use Win32::GuiTest qw( WaitWindow FindWindowLike SetForegroundWindow SendKeys MenuSelect GetSystemMenu );

my $input_dir        = "C:\\Program Files\\Notepad++";
my $filename_to_open = "readme.txt";

# Open the given dir in windows explorer and wait for it to open (timeout - 5sec)
my $status_code = system("C:\\Windows\\explorer.exe", $input_dir);
WaitWindow(basename($input_dir), 5);

# Search for that file explorer window and bring it to front
my ($exp_window) = FindWindowLike(0, basename($input_dir));
SetForegroundWindow($exp_window);

# Keys to be pressed on keyboard in sequential order
foreach my $key ($filename_to_open, "{APP}", "N", "{ENTER}") {
    SendKeys($key);
}
WaitWindow(basename($filename_to_open), 5);

# Search for Notepad++ app window
my ($notepad_win) = FindWindowLike(0, $filename_to_open);
SetForegroundWindow($notepad_win);

# Close the Notepad++ window
MenuSelect("&Close", 0, GetSystemMenu($notepad_win, 0));
WaitWindow(basename($input_dir), 5);

# Close the file explorer window
SendKeys("^w");

#! [% END %]
