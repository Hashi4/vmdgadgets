@rem sozai�f�B���N�g���ɂ��؂肵�����̂��R�s�[���Ă���

@rem [�E]: ���[�V�������], �S�Ă̐e��(4,5, 0, -2), �Z���^�[�Ƒ�IK�̍�����0.85�{
@rem [��]: �S�Ă̐e��(-4,5, 0, 2), �Z���^�[�Ƒ�IK�̍�����0.95�{

@set BASE="sozai\[A]ddiction_Tda��.vmd"
@set VGPATH=..\..\..\vmdgadgets
%VGPATH%\vmd_concat.py mirror.txt|python %VGPATH%\move_root.py --pos 4.5 0 -2 --angles 0 -3 0|%VGPATH%\scale_motion.py -s 1 0.85 1 > right_base.vmd
%VGPATH%\move_root.py %BASE% --pos -4.5 0 2 --angles 0 3 0|%VGPATH%\scale_motion.py -s 1 0.95 1 > left_base.vmd
