rmdir /s /q C:\wamp64\www\dinnersys_beta\backend
rmdir /s /q C:\wamp64\www\dinnersys_beta\frontend
robocopy D:\github\dinnersystem\Backend C:\wamp64\www\dinnersys_beta\backend /e /xd .git
robocopy D:\github\dinnersystem\Frontend-Website C:\wamp64\www\dinnersys_beta\frontend /e /xd .git
