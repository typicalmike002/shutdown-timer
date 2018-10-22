@echo off
IF "%1"=="" (
    powershell -noexit "& ""%~dp0../shutdown-timer.ps1"""
) ELSE (
    powershell -noexit "& ""%~dp0../shutdown-timer.ps1""" -Time "%1"
)