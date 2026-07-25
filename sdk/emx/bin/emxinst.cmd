/* emxinst.cmd -- Make desktop objects for emx
   Copyright (c) 1993-1998 Eberhard Mattes

This file is part of emx.

emx is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2, or (at your option)
any later version.

emx is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with emx; see the file COPYING.  If not, write to
the Free Software Foundation, 59 Temple Place - Suite 330,
Boston, MA 02111-1307, USA.  */


call RxFuncAdd "SysLoadFuncs", "RexxUtil", "SysLoadFuncs"
call SysLoadFuncs

version = '0.9d'

say 'emxinst' version '-- Copyright (c) 1993-1998 by Eberhard Mattes'

parse arg arg1 rest

if arg1 \== '' then do
  say 'Usage: emxinst'
  exit 1
end

location = '<EM_emx_'||version||'_FOLDER>'

call make_folder
call make_book 'emxbook', 'Programming Manual', ''
call make_book 'emxlib', 'Library Reference', ' [Topic]'
call make_book 'emxrt', 'Run-Time Guide', ''

say 'emx' version 'folder successfully created.'

exit

make_folder: procedure expose location version
  if \SysCreateObject('WPFolder', 'emx '||version, '<WP_DESKTOP>', ,
                      'OBJECTID='||location, 'update') then do
    say 'Cannot create folder.'
    exit 1
  end
  return

make_book: procedure expose location
  parse arg name, title, parm
  if \SysCreateObject('WPProgram', title, location, ,
                      'PROGTYPE=PM;EXENAME=VIEW.EXE;PARAMETERS='||name||parm, ,
                      'update') then do
    say 'Cannot create book object.'
    exit 1
  end
  return
