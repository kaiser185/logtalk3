%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  This file is part of Logtalk <http://logtalk.org/>  
%  Copyright (c) 1998-2013 Paulo Moura <pmoura@logtalk.org>
%
%  This program is free software: you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation, either version 3 of the License, or
%  (at your option) any later version.
%  
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
%  
%  You should have received a copy of the GNU General Public License
%  along with this program.  If not, see <http://www.gnu.org/licenses/>.
%  
%  Additional licensing terms apply per Section 7 of the GNU General
%  Public License 3. Consult the `LICENSE.txt` file for details.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


:- object(gxl_graph,
	implements(graphp)).

	:- info([
		version is 2.0,
		author is 'Paulo Moura',
		date is 2013/12/10,
		comment is 'Generates entity diagram GXL files for source files and libraries.'
	]).

	output_file_name(Name, File) :-
		atom_concat(Name, '.gxl', File).

	output_file_header(Stream, _Options) :-
		write(Stream, '<?xml version="1.0" encoding="UTF-8"?>\n'),
		write(Stream, '<gxl xmlns:xlink=" http://www.w3.org/1999/xlink">\n'),
		write(Stream, '  <graph id="diagram" edgeids="true" edgemode="defaultdirected" hypergraph="false">\n').

	output_file_footer(Stream, _Options) :-
		write(Stream, '  </graph>\n'),
		write(Stream, '</gxl>\n').

:- end_object.
