%%%%%%%%%%%%%%%% ����� �����, ���� ������ ������� %%%%%%%%%%%%%%%%

�����_������:-
	���_����_���(165 ,80 , 1230, 680, 5 , 101,'����� ������'),
	�����_����(' ����� ����� '),
	���_���(2, 1),
	�����('������ ������ ����� ���: ��.  ������ ���� ������ ���: ��',3,[��,��],_����),
	((_����==��, ����_�����(' ��� ������ '), ���_�����(_����));
                     (_����==��, ���_�����(_����))),
	�����_������(_����), 
	����_����.

�����_������(_����):-
	%��_�����(_����),
	�����(_����,_�����,_����), 
	����_�����, ����_�����('������ ���: '), 
	((_�����=='��',���_����(_����));(_�����=='not',���_����(not _����))),
	����_�����, ����_�����('��� ������ ���� ���� (��/��) '),
	���_�����(_����),
	����_����(_����,_����),
	����_�����, ����_�����('������_������? ' ),
	���_�����(_���), _���='��',!,����_�����.

�����_������(_����):-
	��_�����(_����),
	����_�����, ����_�����('��� (���) ������: '),����_�����.

�����_������(_����):-
	�����(_����),
	����_�����, ����_�����('��� ������� ������� '),����_�����.

����_����('��',_����):-
	����_�����, ����_�����('������ ������ �� ����� ���� ����: '),
	����_�����, ����_���(1),
	����(_����,1).
����_����(_,_).

% ���� ������ ���� ����� ������ �� �� �����.
����([_����],_���):-
	����(_����,_���). 
% ����� ���� ���� ���.
����((_���,_��,_���,_���,_����),_���):-
	����(���_����(_���)),
	����_�����,
	���_����(_���), ����_�����(2),����_�����(_��),����_�����,
	����_���(_���,1,_����),	����_�����,
	����_�����('��� ���� ���� ����� ���� �����'),����_�����,
	����_�����('��� � ���� ����� ��� �����'),����_�����,
	����_�����('��� � ���� �����'),����_�����,
	���_�����(_����),
	����_����(_����,_����,_����,_���),
	����.
%����� ���� ���� �����
����((_����,_����),_���):-
	����(���_����(_���)),
	����_�����, ����_�����(_����), ����_�����(2),
	���_����(_����), ����_�����,
	����_�����('��� � ���� ����� ��� �����'),����_�����,
	����_�����('��� � ���� �����'),����_�����,
	���_�����(_����),
	����_����(_����,0,_,_���),
	����.


% ����� ��� ���� ���� ����� �� ������.
%%%%%%%%
����_���(_���,_����,_���):-
     ����(_���),
     _���\=(_,_),_���\=(_;_),!,
     _��� ��� _���� - 1.

/*
����_���(_�����,_����,_����):-
         �� ����(_�����),
	_�����\=(_,_),
	����_�����(_����),����_�����('> '),
	���_����(_�����).

����_���((_�����,_����),_����,_����):-
         �� ����(_�����),
         ����(_����),

	����_�����(_����),����_�����('> '),
	���_����(_�����), ����_�����(' ���'),
	����_�����,
	_��� is _���� + 1,
	����_���(_����,_���,_����).
*/
����_���(_�����,_����,_����):-
	_�����\=(_,_),
	����_�����(_����),����_�����('> '),
	���_����(_�����).

����_���((_�����,_����),_����,_����):-
	����_�����(_����),����_�����('> '),
	���_����(_�����), ����_�����(' ���'),
	����_�����,
	_��� is _���� + 1,
	����_���(_����,_���,_����).

% ����� ���� ��� ���� ����� ����� ������
%����_����(_����_������,_����_��������,_�����_����,_��� ������).

%% ����� ����� ����:
% ���� ���� ����:
����_����(1,1,_����,_���):-
	!, _���� is _��� + 1,
	����_���(_����),
	����(_����,_����).

%���� ���� �����:
����_����(_����,_����,_����,_���):-
	���(_����),_���� >= _����,!,
	�����_����(_����,_��_����,_����),
	_���� is _��� + 1,
	����_���(_����),
	����(_��_����,_����).

%% ����� ���� ���� ����
����_����('�',_,_,_���):-
	_���� is _��� - 1,
	����_���(_����),!.

%% ����� ����
����_����('�',_,_,_):-
	����_���(0),!.
%% ��� ����
����_����(_,_,_,_):-
	����_�����('��� ����').

����_���(_����):-
	���(���_����,1),
	����(���_����(_����)).

����(_����):-_����.
����(_����):-_����,����(_����).


%���_����(_����).

���_����((_�����,_����)):-
	!,���_����(_�����),
	����_�����(' ��� '),
	����_�����,
	���_����(_����).
���_����(not _�����):-
	�����(_,_�����,_�����,_�����_��),!,
	���_��(_�����,_�����_��,_����),
	����_�����(_����).
���_����(not _�����):-
	!, ����_�����(' �� '),����_�����('( '),
	���_����(_�����),
	����_�����(' )').
���_����(_�����):-
	�����(_,_�����,_�����,_),!,
	����_�����(_�����).
���_����(_�����):-
	����_�����(_�����).

����_�����([_����]):-
	����_�����(_����),!.
����_�����([_����|_����]):-
	����_�����(_����),����_�����(1),
	����_�����(_����).


���_��([_����|_����],1,[��, _����|_����]).
���_��([_����|_����],_����,[_����|_����]):-
	_����_��� is _���� - 1,
	���_��(_����,_����_���,_����).


����_�����:-
	����_�����,����_�����('�����, ��� �� ��� �����'),
	����_���,
                    �����('? ���� ������ �����',4,[�����,�����],_����),
	((_����==�����,!,����_����_���('����� ������'));(_����==�����,!)).	