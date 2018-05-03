@rem ���s��1200, 2720�t���[����������C��
@set MODEL1="sozai\�N� Kawaii Strike_���i.pmx"
@set MODEL2="sozai\�i�|���I��_���i.pmx"

@set MOTION1=workspace\jewel_i_moved.vmd
@set MOTION2=workspace\jewel_moved.vmd
@set CAMERA=workspace\cam_gaze.vmd

@set EYES_CONST=--constraint ���� 12 12 0 0.15 0.15 0
@set HEAD_CONST=--constraint �� 60 90 40 0.3 0.2 0
@set NECK_CONST=--constraint �� 60 90 40 0.1 0.1 0


@set FRAME_RANGES=--frame_range 270 370 --frame_range 710 2720 --frame_range 2770 3220
@set VGPATH=..\..\..\vmdgadgets

python %VGPATH%\trace_camera.py %MODEL1% %MOTION1% %CAMERA% workspace\head1.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST% --near --vmd_lerp --use_vmd_interpolation %FRAME_RANGES%
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION1%|python %VGPATH%\merge_vmd.py -i - workspace\head1.vmd -o left.vmd

python %VGPATH%\trace_camera.py %MODEL2% %MOTION2% %CAMERA% workspace\head2.vmd %NECK_CONST% %HEAD_CONST% %EYES_CONST% --near --vmd_lerp --use_vmd_interpolation %FRAME_RANGES%
python %VGPATH%\omit_motion.py -b �� -b �� -b ���� %MOTION2%|python %VGPATH%\merge_vmd.py -i - workspace\head2.vmd -o right.vmd
