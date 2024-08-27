@echo off
setlocal

REM Check if foreman is installed
ruby -e "require 'foreman'" >nul 2>&1 || (
  echo Installing foreman...
  gem install foreman
)

REM Set default port
set PORT=%PORT:=%3000%

REM Start foreman with Procfile.dev
foreman start -f Procfile.dev %*
