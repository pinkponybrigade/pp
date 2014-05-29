on run argv
  set filename to (item 1 of argv)
  tell application "System Events" to set picture of every desktop to filename
end run