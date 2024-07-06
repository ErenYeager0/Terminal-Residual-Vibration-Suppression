clear all;clc;

vib_init=xlsread("vib_init.xlsx");
vib_opt=xlsread("vib_opt.xlsx");
vib_shape=xlsread("vib_shape.xlsx");
cycle=length(vib_init(:,1));
time=0:0.004:(cycle-1)*0.004;
plot(time,vib_init(:,5)+9.8,'linewidth',2);
hold on;
plot(time,vib_shape(:,5)+9.8,'linewidth',2);
plot(time,vib_opt(:,5)+9.8,'linewidth',2);
hold on;
legend('ԭʼ������','�������κ�������','�����Ż���������');
grid on;xlim([time(1),time(end)]);
% title('ĩ��Z�����񶯼��ٶ�����');
xlabel('ʱ�� T(s)');ylabel('���ٶ� a(m/s^2)');

% zp = BaseZoom();
% zp.plot;