@rem ���؂肵�����̂�sozai�f�B���N�g���ɃR�s�[���Ă���

@rem �u���ׂĂ̐e�v�̈ʒu�E��]��ύX
@rem ���J: �ʒu(-14.5, 0, -0.5), ��](0, 110, 0) => luka.vmd
@rem �~�N: �ʒu(8.5, 0, 3.5), ��](0, -70, 0) => miku.vmd

@rem ���Ⴊ�ޏ��͗v����
@set MIKU="sozai\mag�~�N�ʃo�[�W����.vmd"
@set LUKA="sozai\mag���J�ʃo�[�W����.vmd"

@set VGPATH=..\..\..\vmdgadgets
python %VGPATH%\move_root.py %MIKU% miku.vmd --pos -14.5 0 -0.5 --angle 0 110 0
python %VGPATH%\move_root.py %LUKA% luka.vmd --pos 8.5 0 3.5 --angle 0 -70 0

