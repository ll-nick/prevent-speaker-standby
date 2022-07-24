# prevent-speaker-standby
Inaudible soundfile played periodically to prevent speaker standby.

## tl;dr

```
git clone https://github.com/ll-nick/prevent-speaker-standby.git
cd prevent-speaker-standby
./installCrontab.sh
```

## What's this?

This repo contains a 3-second sound file that plays a 22kHz sine wave, i.e. inaudible to the human ear.
It consists of 1s fade in, 1s full amplitude and 1s fade out to prevent clicking.

The install script provided will install a crontab to play this file periodically every 4 minutes.
This should prevent speakers to go into standby mode.

Additionally, there is a sound file marked as test which can be used for testing if the crontab is actually working.
It's the same thing but instead of the 22kHz sound wave, it's an audible sound (A, 440Hz) so you can verify that everything works as intended.
Just rename the file (remove "test" from the filename) to test.

## Resources

- Solution to the standby problem: https://www.reddit.com/r/linuxquestions/comments/1zfd7o/anything_in_the_linux_toolkit_that_can_prevent_my/
- Crontab - Create crontab using script: https://stackoverflow.com/questions/4880290/how-do-i-create-a-crontab-through-a-script
- Crontab - Check if crontab already exists: https://stackoverflow.com/questions/14450866/search-for-a-cronjob-with-crontab-l/14451184#14451184
- Bash - Get script directory: https://stackoverflow.com/questions/59895/how-can-i-get-the-directory-where-a-bash-script-is-located-from-within-the-scrip
