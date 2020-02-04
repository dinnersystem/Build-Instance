rmdir /s /q C:\wamp64\www\dinnersys_beta\backend
rmdir /s /q C:\wamp64\www\dinnersys_beta\frontend
robocopy D:\github\Backend C:\wamp64\www\dinnersys_beta\backend /e /xd .git
robocopy D:\github\Frontend-Website C:\wamp64\www\dinnersys_beta\frontend /e /xd .git
