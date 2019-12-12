SET @bpm = 60;

call mikumiku.note_on(@bpm, 0.5, 'F#3',   'あ', 70);
call mikumiku.note_on(@bpm,   1, 'F#3',   'お', 70);
call mikumiku.note_on(@bpm, 0.5,  'G3',   'げ', 70);
call mikumiku.note_on(@bpm,   1,  'A3',   'ば', 70);
call mikumiku.note_on(@bpm, 0.5,  'A3',   'と', 70);
call mikumiku.note_on(@bpm,   1,  'B3',   'お', 70);
call mikumiku.note_on(@bpm, 0.5,  'B3',   'と', 70);
call mikumiku.note_on(@bpm,   1,  'A3',   'し', 70);

call mikumiku.note_on(@bpm, 0.5, 'F#3',   'わ', 70);
call mikumiku.note_on(@bpm,   1,  'E3',   'が', 70);
call mikumiku.note_on(@bpm, 0.5, 'F#3',   'し', 70);
call mikumiku.note_on(@bpm,   1,  'G3',   'の', 70);
call mikumiku.note_on(@bpm, 0.5,  'B3',   'お', 70);
call mikumiku.note_on(@bpm, 1.5,  'A3',   'ん', 70);
select sleep(mikumiku.calc_length(@bpm, 1) / 1000.0);

call mikumiku.note_on(@bpm, 0.5, 'F#3',   'お', 70);
call mikumiku.note_on(@bpm,   1, 'F#3',   'し', 70);
call mikumiku.note_on(@bpm, 0.5,  'G3',   'え', 70);
call mikumiku.note_on(@bpm,   1,  'A3',   'の', 70);
call mikumiku.note_on(@bpm, 0.5,  'A3',   'に', 70);
call mikumiku.note_on(@bpm,   1,  'B3',   'わ', 70);
call mikumiku.note_on(@bpm, 0.5,  'B3',   'に', 70);
call mikumiku.note_on(@bpm,   1,  'A3',   'も', 70);

call mikumiku.note_on(@bpm, 0.5, 'F#3',   'は', 70);
call mikumiku.note_on(@bpm,   1,  'E3',   'や', 70);
call mikumiku.note_on(@bpm, 0.5,  'B3',   'い', 70);
call mikumiku.note_on(@bpm,   1,  'A3',   'く', 70);
call mikumiku.note_on(@bpm, 0.5, 'C#3',   'と', 70);
call mikumiku.note_on(@bpm, 1.5,  'D3',   'せ', 70);

