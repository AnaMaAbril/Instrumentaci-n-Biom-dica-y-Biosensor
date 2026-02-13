clc; clear; close all;

puerto   = "COM6";
baudrate = 115200;

Fs = 50;   

Trec = input('Digite el tiempo de adquisición en segundos: ');
Ntotal = Fs*Trec;

f_low  = 0.1;  
f_high = 0.5;   

function capturar_senal(nombre_archivo, puerto, baudrate, Fs, Trec)

    Ntotal = Fs*Trec;
    tiempo = (0:Ntotal-1)/Fs;
    voltaje = zeros(Ntotal,1);

    s = serialport(puerto, baudrate);
    configureTerminator(s,"LF");
    flush(s);
    pause(2);

    figure;
    h = plot(tiempo,voltaje);
    xlabel('Tiempo (s)');
    ylabel('Voltaje (V)');
    title(['Captura - ' nombre_archivo]);
    grid on;
    ylim([0 3.3]);

    disp("Iniciando captura...");

    for k = 1:Ntotal
        dato = str2double(readline(s));
        if ~isnan(dato)
            voltaje(k) = dato;
            set(h,'YData',voltaje);
            drawnow limitrate;
        end
    end

    clear s;
    save(nombre_archivo,"voltaje","tiempo","Fs");

    disp("Captura guardada correctamente");
end
%% ================== CAPTURA REPOSO =======================
disp("Coloque el sensor en el sujeto EN REPOSO");
pause(3);
capturar_senal("reposo.mat", puerto, baudrate, Fs, Trec);

%% ================== CAPTURA HABLANDO ======================
disp("Ahora el sujeto debe HABLAR o LEER");
pause(5);
capturar_senal("hablando.mat", puerto, baudrate, Fs, Trec);

%% ================== ANÁLISIS DE SEÑALES ==================

clc; close all;

load("reposo.mat");
x1 = voltaje; 
t1 = tiempo;

load("hablando.mat");
x2 = voltaje; 
t2 = tiempo;

%% ================== FILTRO PASA-BANDA ====================

[b,a] = butter(2,[f_low f_high]/(Fs/2),"bandpass");

x1_f = filtfilt(b,a,x1);
x2_f = filtfilt(b,a,x2);

figure;
plot(t1,x1,'Color',[0.7 0.7 0.7]); hold on;
plot(t1,x1_f,'b','LineWidth',1.5);
title('Reposo - Original vs Filtrada');
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');
legend('Original','Filtrada');
grid on;

figure;
plot(t2,x2,'Color',[0.7 0.7 0.7]); hold on;
plot(t2,x2_f,'r','LineWidth',1.5);
title('Hablando - Original vs Filtrada');
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');
legend('Original','Filtrada');
grid on;

%% ================== FFT ===========================

N1 = length(x1_f);
X1 = fft(x1_f);
f1 = (0:N1-1)*(Fs/N1);
mag1 = abs(X1)/N1;

idx1 = 1:floor(N1/2);
f1 = f1(idx1);
mag1 = mag1(idx1);

figure;
plot(f1,mag1,'b','LineWidth',1.5);
title('Espectro - Reposo');
xlabel('Frecuencia (Hz)');
ylabel('Magnitud');
xlim([0 2]);
grid on;

[~,i1] = max(mag1);
f_resp1 = f1(i1);
resp_min1 = f_resp1*60;


N2 = length(x2_f);
X2 = fft(x2_f);
f2 = (0:N2-1)*(Fs/N2);
mag2 = abs(X2)/N2;

idx2 = 1:floor(N2/2);
f2 = f2(idx2);
mag2 = mag2(idx2);

figure;
plot(f2,mag2,'r','LineWidth',1.5);
title('Espectro - Hablando');
xlabel('Frecuencia (Hz)');
ylabel('Magnitud');
xlim([0 2]);
grid on;

[~,i2] = max(mag2);
f_resp2 = f2(i2);
resp_min2 = f_resp2*60;

disp("====================================");
disp("        RESULTADOS FINALES");
disp("====================================");

disp("REPOSO:");
disp("Frecuencia dominante: " + f_resp1 + " Hz");
disp("Frecuencia respiratoria: " + resp_min1 + " resp/min");

disp(" ");

disp("HABLANDO:");
disp("Frecuencia dominante: " + f_resp2 + " Hz");
disp("Frecuencia respiratoria: " + resp_min2 + " resp/min");

disp("====================================");

if resp_min2 > resp_min1
    disp("La frecuencia respiratoria aumentó al hablar.");
else
    disp("No se evidenció aumento significativo al hablar.");
end
