@rem ��E���E�ڃ��[�V�������኱�ύX���܂�
@rem �\�ߑ��i���������f����pmx�t�@�C���A���[�V����2���sozai�f�B���N�g���ɗp��
@rem workspace�f�B���N�g���͒��Ԑ������u����

@set BASE1="sozai\JEWEL_���i�{�[��.vmd"
@set BASE2="sozai\JEWEL_�㔼�g2�r���蝀��IK�e.vmd"

@set WORKSPACE=workspace
@set VGPATH=..\..\..\vmdgadgets

if not exist %WORKSPACE% (
    mkdir %WORKSPACE%
)

@rem �J�����ڐ��ɂ��Ȃ����������O
python remove_frames.py jewel_camera.vmd %WORKSPACE%\cam_gaze.vmd

@rem ��ȏ�͏��W���{�[���ł𗘗p�A���艺�͑��i�{�[���ł𗘗p(�Փ˕␳���y�Ȃ̂�)
python %VGPATH%\omit_motion.py -i -b ���� -b �� -b �� %BASE2%  %WORKSPACE%\head.vmd
@rem �J�����̃J�b�g�t���[����̐��t���[���̓����[�V�����폜
python cut.py %WORKSPACE%\head.vmd %WORKSPACE%\cam_gaze.vmd %WORKSPACE%\head_cutted.vmd
python %VGPATH%\omit_motion.py -b ���� -b ���e1 -b ���e2 -b ���e3 -b �� -b ���� %BASE1%  %WORKSPACE%\body.vmd
@rem merge
python %VGPATH%\merge_vmd.py -i %WORKSPACE%\head_cutted.vmd %WORKSPACE%\body.vmd -o %WORKSPACE%\jewel.vmd

@rem ���]���[�V�����쐬�ƑS�Ă̐e�ړ�
python %VGPATH%\vmd_concat.py mirror.txt %WORKSPACE%\jewel_i.vmd
python %VGPATH%\move_root.py --pos -3.3 0 2 %WORKSPACE%\jewel_i.vmd %WORKSPACE%\jewel_i_moved.vmd
python %VGPATH%\move_root.py --pos 3.3 0 -2 %WORKSPACE%\jewel.vmd %WORKSPACE%\jewel_moved.vmd

@rem ��E���E���ڃ��[�V��������(���v���ԑ�) => left.vmd, right.vmd
call trace_camera.bat
